#include "rpg.hpp"
#include "sip.hpp"
#include <cstring>
#include <fstream>
#include <memory>
#include <regex>
#include <string>
#include <unordered_map>
#include <vector>
using namespace std;

static string exec(const char *cmd) {
  shared_ptr<FILE> pipe(popen(cmd, "r"), pclose);
  if (!pipe)
    return "ERROR";
  char buffer[128];
  string result = "";
  while (!feof(pipe.get())) {
    if (fgets(buffer, 128, pipe.get()) != NULL)
      result += buffer;
  }
  return result;
}
static vector<string> split(string str, string delimiter) {
  vector<string> v;
  char *token = strtok(const_cast<char *>(str.c_str()), delimiter.c_str());
  while (token != nullptr) {
    v.push_back(string(token));
    token = strtok(nullptr, delimiter.c_str());
  }
  return v;
}
static bool do_match(const vector<vector<bool>> &adjA,
                     const vector<vector<bool>> &adjB, vector<int> &assgn) {
  for (int i = 0; i < adjA.size(); i++) {
    int j = assgn[i]; // i in adjB
    for (int p = 0; p < adjA.size(); p++) {
      int q = assgn[p];
      if (adjA[i][p] && !adjB[j][q]) {
        printf("DON'T MATCH!\n");
        return false;
      }
    }
  }
  return true;
}
/** Assigns each node in A a node in B in assgn with backtracking,
 * returns true if A is a subgraph of B.
 * Assumes |A| <= |B|.
 * adjA, adjB are the adjacency matricies for A and B.
 * degA, degB are the degrees of each node in A and B (in degree, out degree).
 * assgn must be initialized with -1, curr is the current node (start with 0).
 */
static bool backtrack_subgraph(const vector<vector<bool>> &adjA,
                               const vector<vector<bool>> &adjB,
                               const vector<pair<int, int>> &degA,
                               const vector<pair<int, int>> &degB,
                               vector<bool> &alreadyAssigned,
                               vector<int> &assgn, int curr) {
  if (curr >= adjA.size())
    return true;
  // find suitable node for curr
  for (int nb = adjB.size() - 1; nb >= 0; nb--) {
    if (alreadyAssigned[nb])
      continue;
    // check degrees
    if (degA[curr].second > degB[nb].second)
      continue; // too few outgoing
    if (degA[curr].first > degB[nb].first)
      continue; // too few ingoing
    // all existing assignments must match
    bool fits = true;
    for (int j = 0; j < adjA.size(); j++) {
      // if j is assigned as k ...
      int k = assgn[j];
      if (k >= 0) {
        // edges curr -> j must match nb -> k
        if (adjA[curr][j]) {
          if (!adjB[nb][k]) {
            fits = false;
            break;
          }
        }
        // edges j -> curr must match k -> nb
        if (adjA[j][curr]) {
          if (!adjB[k][nb]) {
            fits = false;
            break;
          }
        }
        // we don't check for missing edges (because subgraph matching)
      }
    }
    if (!fits)
      continue;
    // try out nb
    assgn[curr] = nb;
    alreadyAssigned[nb] = true;
    if (backtrack_subgraph(adjA, adjB, degA, degB, alreadyAssigned, assgn,
                           curr + 1))
      return true;
    alreadyAssigned[nb] = false;
    // backtrack
    assgn[curr] = -1;
  }
  return false;
}
bool subgraph_matching(const vector<vector<bool>> &adjA,
                       const vector<vector<bool>> &adjB) {
  // precompute degrees
  vector<pair<int, int>> degA(adjA.size(), {0, 0}),
      degB(adjB.size(), {0, 0}); // in, out degree
  for (int i = 0; i < adjA.size(); i++) {
    for (int j = 0; j < adjA.size(); j++) {
      if (adjA[i][j]) {
        degA[i].second++;
        degA[j].first++;
      }
    }
  }
  for (int i = 0; i < adjB.size(); i++) {
    for (int j = 0; j < adjB.size(); j++) {
      if (adjB[i][j]) {
        degB[i].second++;
        degB[j].first++;
      }
    }
  }
  vector<int> assgn(adjA.size(), -1);
  vector<bool> alreadyAssigned(adjB.size(), false);
  return backtrack_subgraph(adjA, adjB, degA, degB, alreadyAssigned, assgn, 0);
}
pair<vector<vector<bool>>, unordered_map<string, int>>
parse_call_graph(string path) {
  string output = exec(("objdump -d --no-show-raw-insn " + path).c_str());
  vector<string> lines = split(output, "\n");
  unordered_map<string, int> func_numbering;
  // first scan and add the functions
  regex func_decl("[A-Za-z0-9\\s\\t]*<([^>]*)>:");
  for (string line : lines) {
    smatch matches;
    if (regex_search(line, matches, func_decl)) {
      func_numbering.insert({matches[1], func_numbering.size()});
    }
  }
  // adjacency matrix
  vector<vector<bool>> adj(func_numbering.size(),
                           vector<bool>(func_numbering.size(), false));
  // now scan instructions for calls to functions
  int current_func = -1;
  regex call_inst(
      "[A-Za-z0-9\\s\\t]*:[\\s\\t]*(call|jmp|jle|jge|jl|jg)[^<]*<([^>]*)>");
  size_t edges = 0;
  for (string line : lines) {
    smatch func_match;
    if (regex_search(line, func_match, func_decl)) {
      current_func = func_numbering[func_match[1]];
    } else {
      smatch call_match;
      if (current_func >= 0 && regex_search(line, call_match, call_inst)) {
        auto numbering = func_numbering.find(call_match[2].str());
        if (numbering != func_numbering.end()) {
          auto [_, idx] = *numbering;
          adj[current_func][idx] = true;
          edges++;
        }
      }
    }
  }
  printf("Extracted Call Graph with %ld nodes and %ld edges \n", adj.size(),
         edges);
  return {adj, func_numbering};
}

int main(int argc, char **argv) {
  if (argc < 4) {
    printf("Usage: %s <binary> <message> [<keyfile>]\nDetects if the call "
           "graph of the "
           "binary includes the message encoded as an RPG\n",
           argv[0]);
    exit(1);
  }
  auto [cg, func_numbering] = parse_call_graph(argv[1]);
  string msg = argv[2];
  RPG rpg = RPG::from_sip(SIP::encode(msg));
  size_t edges = 0;
  for (int i = 0; i < rpg.adjacency.size(); i++) {
    for (int j = 0; j < rpg.adjacency.size(); j++) {
      if (rpg.adjacency[i][j])
        edges++;
    }
  }
  printf("RPG has %ld nodes and %ld edges\n", rpg.adjacency.size(), edges);
  if (argc == 3) {
    bool match = subgraph_matching(rpg.adjacency, cg);
    if (match)
      printf("Found subgraph!\n");
    else
      printf("Did not find message.\n");
    return match ? 0 : 1;
  } else {
    ifstream sigfile(argv[3]);
    string line;
    vector<int> assgn;
    int i = 0;
    while (std::getline(sigfile, line)) {
      auto it = func_numbering.find(line);
      if (it != func_numbering.end()) {
        auto [_, number] = *it;
        assgn.push_back(number);
      } else {
        printf("Unknown function %s\n", line.c_str());
      }
    }
    bool match = do_match(rpg.adjacency, cg, assgn);
    if (match)
      printf("Found subgraph!\n");
    else
      printf("Did not find message.\n");
    return match ? 0 : 1;
  }
}
