#ifndef SIP_HPP
#define SIP_HPP

#include <cstdint>
#include <string>
#include <vector>
namespace SIP {
/** Interprets the chars of the string as a byte-array and encodes it to a self
 * inverting permutation */
std::vector<uint32_t> encode(std::string w);
/** Encodes the sequence of bits to a self inverting permutation */
std::vector<uint32_t> encode(std::vector<bool> seq);
/** Decodes the self inverting permutation to a sequence of bytes */
std::vector<bool> decode_sequence(std::vector<uint32_t> sip);
/** Decodes the self inverting permutation to a sequence of bytes and interprets
 * it as a string*/
std::string decode_string(std::vector<uint32_t> sip);
}; // namespace SIP

#endif
