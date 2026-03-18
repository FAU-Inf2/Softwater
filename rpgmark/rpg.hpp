#ifndef RPG_HPP
#define RPG_HPP
#include <cstdint>
#include <vector>
struct RPG {
  std::vector<std::vector<bool>> adjacency;
  static RPG from_sip(const std::vector<uint32_t>& sip);
  static std::vector<uint32_t> to_sip(RPG rpg);
};
#endif
