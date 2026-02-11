#ifndef RPG_HPP
#define RPG_HPP
#include <cstdint>
#include <vector>
struct RPG {
  std::vector<std::vector<bool>> adjacency;
	static RPG from_sip(std::vector<uint32_t> sip);
};
#endif
