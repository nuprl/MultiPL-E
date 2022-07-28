#include<assert.h>
#include<bits/stdc++.h>
// Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
bool same_chars(std::string s0, std::string s1) {
  if (s0.size() != s1.size()) return false;
  std::unordered_map<char, int> m0;
  std::unordered_map<char, int> m1;
  for (int i = 0; i < s0.size(); i++) {
    m0[s0[i]]++;
    m1[s1[i]]++;
  }
  for (auto p : m0) {
    if (m1[p.first] != p.second) return false;
  }
  return true;

}
int main() {
    auto candidate = same_chars;
    assert(candidate(("eabcdzzzz"), ("dddzzzzzzzddeddabc")) == (true));
    assert(candidate(("abcd"), ("dddddddabc")) == (true));
    assert(candidate(("dddddddabc"), ("abcd")) == (true));
    assert(candidate(("eabcd"), ("dddddddabc")) == (false));
    assert(candidate(("abcd"), ("dddddddabcf")) == (false));
    assert(candidate(("eabcdzzzz"), ("dddzzzzzzzddddabc")) == (false));
    assert(candidate(("aabb"), ("aaccc")) == (false));
}
