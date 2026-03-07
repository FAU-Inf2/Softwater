#include "rpg.hpp"
#include <cassert>
#include <cstdio>
#include <sys/types.h>
using namespace std;
static bool dominates(std::vector<uint32_t> invsip, int i, int j) {
  if (i <= j)
    return false;
  int si = invsip[i], sj = invsip[j];
  return si < sj;
}

RPG RPG::from_sip(const std::vector<uint32_t> &sip) {
  int n = sip.size();
  RPG dag;
  int total = n + 2;
  // inverse sip
  std::vector<int> invsip(n);
  for (int i = 0; i < n; i++)
    invsip[sip[i]] = i;
  // build dominances and didominance relations
  vector<vector<bool>> dominance(sip.size(), vector<bool>(sip.size(), false));
  for (int i = 1; i < sip.size(); i++) {
    for (int j = 0; j < i; j++) {
      int si = invsip[i], sj = invsip[j];
      if (si < sj) {
        dominance[i][j] = true;
      }
    }
  }
  dag.adjacency =
      std::vector<std::vector<bool>>(total, std::vector<bool>(total, false));
  int source = n + 1;
  int sink = 0;
  for (int i = 0; i < sip.size(); i++) {
    for (int j = 0; j < i; j++) {
      if (dominance[i][j]) { // is there a k s.t. dominance[i][k] and
        // dominance[k][j]
        bool k_exists = false;
        for (int k = 0; k < sip.size(); k++) {
          if (dominance[i][k] && dominance[k][j]) {
            k_exists = true;
            break;
          }
        }
        if (!k_exists) // j in didom(i)
          dag.adjacency[i + 1][j + 1] = true;
      }
    }
  }
  // add source and sink
  for (int i = 0; i < sip.size(); i++) {
    int in = 0, out = 0;
    for (int j = 0; j < i; j++) {
      if (dag.adjacency[i][j])
        out++;
      if (dag.adjacency[j][i])
        in++;
    }
    if (!in)
      dag.adjacency[source][i] = true;
    if (!out)
      dag.adjacency[i][sink] = true;
  }
  // maximum labeled predecessor
  vector<uint32_t> p(total, -1);
  for (int i = 0; i < total; i++) {
    for (int j = total - 1; j >= 0; j--) {
      if (dag.adjacency[j][i]) {
        p[i] = j;
        break;
      }
    }
  }
  RPG rpg;
  rpg.adjacency =
      std::vector<std::vector<bool>>(total, std::vector<bool>(total, false));

  // list pointer edge
  for (int i = n; i >= 0; i--) {
    rpg.adjacency[i + 1][i] = true;
  }
  // add max-didomination pointers
  for (int i = 1; i <= n; i++) {
    int vm = p[i];
    if (vm >= 0)
      rpg.adjacency[i][vm] = true;
  }
  return rpg;
}
static int dfs(RPG &rpg, vector<int> &discovery, int current, int depth) {
  discovery[current] = depth++;
  for (int c = 0; c < rpg.adjacency.size(); c++) {
    if (rpg.adjacency[current][c] && discovery[c] == 0) {
      depth = dfs(rpg, discovery, c, depth);
    }
  }
  return depth;
}
static void dfs(RPG &rpg, vector<int> &discovery) {
  // find root
  int depth = 1;
  for (int i = 1; i < rpg.adjacency.size(); i++) {
    bool is_root = true;
    for (int j = 1; j < rpg.adjacency.size(); j++) {
      if (i != j && rpg.adjacency[j][i]) {
        is_root = false;
        break;
      }
    }
    if (discovery[i] == 0) {
      printf("ROOT: %d\n", i);
      depth = dfs(rpg, discovery, i, depth);
    }
  }
}
std::vector<uint32_t> RPG::to_sip(RPG rpg) {
  // delete (vi+1, vi)
  for (int i = 1; i < rpg.adjacency.size(); i++)
    rpg.adjacency[i][i - 1] = 0;
  // virtually delete s and t
  for (int i = 0; i < rpg.adjacency.size(); i++) {
    rpg.adjacency[0][i] = 0;
    rpg.adjacency[i][0] = 0;
  }
  // flip edges
  vector<vector<bool>> cp(rpg.adjacency);
  for (int i = 1; i < rpg.adjacency.size(); i++) {
    for (int j = 1; j < rpg.adjacency.size(); j++) {
      rpg.adjacency[i][j] = cp[j][i];
    }
  }
  vector<int> discovery(rpg.adjacency.size(), 0);
  dfs(rpg, discovery);
  vector<uint32_t> sip(discovery.size() - 1);
  for (int i = 1; i < discovery.size(); i++) {
    if (discovery[i] == 0)
      printf("Broken at %d\n", i);
    sip[discovery[i] - 1] = i - 1;
  }
  return sip;
}
