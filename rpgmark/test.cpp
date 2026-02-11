#include "acutest.h"
#include "sip.hpp"
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
bool is_sip(std::vector<uint32_t> foo) {
  // every index must occur
  for (int i = 0; i < foo.size(); i++) {
    // must be circle
    if (foo[foo[i]] != i)
      return false;
  }
  return true;
}
void sip_example() {
  vector<uint32_t> sip =
      SIP::encode(std::vector<bool>{true, true, false, false});
  vector<uint32_t> exp = {4, 5, 8, 7, 0, 1, 6, 3, 2};
  TEST_CHECK(sip == exp);
  auto strexp = vec2str(exp);
  auto strsip = vec2str(sip);
  TEST_MSG("Vectors are different, expected: %s, actual: %s", strexp.c_str(),
           strsip.c_str());
}
void sip_is_sip() {
  vector<bool> t1 = {true, true, true, true, true};
  vector<bool> t2 = {false, false, false, false, false};
  vector<bool> t3 = {true, true, true, true};
  vector<bool> t4 = {false, false, false, false};
  vector<bool> t5 = {true, true, false, true};
  vector<bool> t6 = {false, true, false, false, true};
  for (auto &v : {t1, t2, t3, t4, t5, t6}) {
    auto sip = SIP::encode(v);
    TEST_CHECK(is_sip(sip));
    TEST_MSG("encode(%s) = %s is no sip", vec2str(v).c_str(),
             vec2str(sip).c_str());
  }
}
void sip_encode_decode() {
  vector<bool> t1 = {false, true, false, false, true};
  vector<bool> a1 = SIP::decode_sequence(SIP::encode(t1));
  TEST_CHECK(t1 == a1);
  TEST_MSG("%s -> encode -> decode -> %s", vec2str(t1).c_str(),
           vec2str(a1).c_str());
  string actual = SIP::decode_string(SIP::encode("Hello World!"));
  TEST_CHECK(actual == "Hello World!");
  TEST_MSG("'Hello World!' -> encode -> decode -> %s", actual.c_str());
  auto t2 = "12308192371982376aLSDJHkjashdkjashdlkjashdlkajskj=-1023e-"
            "09128398akjsdnlkjas!";
  for (string s : {"1", t2, "äü", "watermark"}) {
    actual = SIP::decode_string(SIP::encode(s));
    TEST_CHECK(actual == s);
    TEST_MSG("'%s' -> encode -> decode -> %s", t2, actual.c_str());
  }
}
TEST_LIST = {
    {"SIP Encoding Example", sip_example},
    {"SIP Properties", sip_is_sip},
    {"SIP Encoding/Decoding", sip_encode_decode},
    {NULL, NULL} /* zeroed record marking the end of the list */
};
