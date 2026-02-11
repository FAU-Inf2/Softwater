#include "sip.hpp"
#include <cstdint>
using namespace std;
template <typename T> static string vec2str(vector<T> vec) {
  string s = "[";
  for (int i = 0; i < vec.size(); i++) {
    if (i > 0)
      s += ", ";
    s += std::to_string(vec[i]);
  }
  return s + "]";
}
std::vector<uint32_t> SIP::encode(std::vector<bool> b) {
  using namespace std;
  // construct b_dash
  vector<bool> b_dash(b.size() * 2 + 1, 0);
  for (unsigned int i = 0; i < b.size(); i++)
    b_dash[b.size() + i] = b[i];
  b_dash[b.size() * 2] = true;
  // b_star is b_dash negated, pre-calculate size of x and y
  unsigned int ones = 0, zeros = 0;
  vector<bool> b_star(b_dash.size());
  for (unsigned int i = 0; i < b_dash.size(); i++) {
    b_star[i] = !b_dash[i];
    if (b_star[i])
      ones++;
    else
      zeros++;
  }
  // find X (indices of 0s) and Y (indices of 1s) in B_star
  vector<uint32_t> x(zeros), y(ones);
  {
    size_t xi = 0, yi = 0;
    for (unsigned int i = 0; i < b_star.size(); i++) {
      if (b_star[i])
        y[yi++] = i;
      else
        x[xi++] = i;
    }
  }
  // construct bitonic
  vector<uint32_t> z(x.size() + y.size());
  for (unsigned int i = 0; i < x.size(); i++)
    z[i] = x[i];
  for (unsigned int i = 0; i < y.size(); i++)
    z[x.size() + i] = y[y.size() - 1 - i];
  // construct SIP
  vector<uint32_t> pi = z;
  int ia = 0, ib = z.size() - 1;
  while (ia <= ib) {
    const uint32_t a = z[ia];
    const uint32_t b = z[ib];
    pi[a] = b;
    pi[b] = a;
    ia++;
    ib--;
  }
  // if (pi.size() % 2 != 0) {
  //   pi[pi.size() / 2] = z[pi.size() / 2];
  // }
  return pi;
}

std::vector<bool> SIP::decode_sequence(std::vector<uint32_t> sip) {
  // cycle representation: we simply mark the indices
  vector<uint32_t> z(sip.size());
  {
    vector<bool> cycle(sip.size(), false);
    int i = 0, j = sip.size() - 1;
    while (true) {
      // find still unnmarked cycle
      int ci = -1, cj = -1;
      for (int k = 0; k < cycle.size(); k++) {
        if (!cycle[k]) {
          ci = k;
          cj = sip[k];
          break;
        }
      }
      if (ci < 0)
        break;
      if (ci != cj) { // length 2
        cycle[ci] = true;
        cycle[cj] = true;
        z[i] = ci;
        z[j] = cj;
        i++;
        j--;
      } else { // length 1
        cycle[ci] = true;
        z[i] = ci;
        i++;
      }
    }
  }
  // reconstruct b_dash directly
  vector<bool> b(sip.size());
  {
    int i = 0;
    // find increasing (X)
    for (; i < b.size(); i++) {
      if (i < b.size() - 1 && z[i] > z[i + 1]) // not increasing
        break;
      b[z[i]] = false; // negated because b_star -> b_dash
    }
    // rest is decreasing (Y)
    for (; i < b.size(); i++) {
      b[z[i]] = true; // negated because b_star -> b_dash
    }
  }
  int n = (b.size() - 1) / 2;
  vector<bool> input(n);
  for (int i = 0; i < n; i++) {
    input[i] = b[n + i];
  }
  return input;
}

std::vector<uint32_t> SIP::encode(std::string w) {
  vector<bool> b(w.size() * 8);
  for (int i = 0; i < w.size(); i++) {
    char c = w[i];
    for (int k = 7; k >= 0; k--) {
      b[i * 8 + k] = c & 0x1;
      c = c >> 1;
    }
  }
  return encode(b);
}
std::string SIP::decode_string(std::vector<uint32_t> sip) {
  vector<bool> b = decode_sequence(sip);
  string s;
  s.reserve(b.size() / 8);
  for (int i = 0; i < b.size(); i += 8) {
    char c = 0;
    for (int j = 0; j < 8; j++)
      c = (c << 1) + (b[i + j] ? 1 : 0);
    s += c;
  }
  return s;
}
