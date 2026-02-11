#include "rpg.hpp"
using namespace std;
static bool dominates(std::vector<uint32_t> invsip, int i, int j) {
  if (i <= j)
    return false;
  int si = invsip[i], sj = invsip[j];
  return si < sj;
}

static RPG from_sip(const std::vector<uint32_t> &sip) {
  int n = sip.size();
  RPG rpg;
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
  // build didominance matrix
  vector<vector<bool>> didominance(sip.size(), vector<bool>(sip.size(), false));
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
        didominance[i][j] = !k_exists;
      }
    }
  }
  rpg.adjacency =
      std::vector<std::vector<bool>>(total, std::vector<bool>(total, false));
  int source = n + 1;
  int sink = 0;
  // backbone edge
  for (int i = source; i > 0; i--) {
    rpg.adjacency[i][i - 1] = true;
  }
  // find max-didomination edges
  for (int i = 0; i < n; i++) {
    int best = -1;
    for (int j = i + 1; j < n; j++) {
      if (didominance[j][i]) {
        if (j > best)
          best = j;
      }
    }
    if (best == -1)
      rpg.adjacency[i + 1][source] = true;
    else
      rpg.adjacency[i + 1][best] = true;
  }
  return rpg;
}
