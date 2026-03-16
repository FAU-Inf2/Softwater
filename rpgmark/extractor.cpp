#include <cstring>
#include <iostream>
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

vector<vector<bool>> parse_call_graph(string path) {
  string output = exec(("objdump -d --no-show-raw-insn " + path).c_str());
  vector<string> lines = split(output, "\n");
  unordered_map<string, int> func_numbering;
  // first scan and add the functions
  regex func_decl("[A-Za-z0-9\\s\\t]*<([^>]*)>:");
  for (string line : lines) {
    smatch matches;
    if (regex_search(line, matches, func_decl)) {
      cout << "Found: " << matches[1] << endl;
      func_numbering.insert({matches[1], func_numbering.size()});
    }
  }
  return {};
}

int main(int argc, char **argv) { parse_call_graph(argv[1]); }
