#include<assert.h>
#include<bits/stdc++.h>
// Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
std::string encrypt(std::string s) {
  std::string encrypted = "";
  for (int i = 0; i < s.length(); i++) {
    if (s[i] == 'z') {
      encrypted += 'a';
    } else if (s[i] == 'y') {
      encrypted += 'b';
    } else if (s[i] == 'x') {
      encrypted += 'c';
    } else if (s[i] == 'w') {
      encrypted += 'd';
    } else if (s[i] == 'v') {
      encrypted += 'e';
    } else if (s[i] == 'u') {
      encrypted += 'f';
    } else if (s[i] == 't') {
      encrypted += 'g';
    } else if (s[i] == 's') {
      encrypted += 'h';
    } else if (s[i] == 'r') {
      encrypted += 'i';
    } else if (s[i] == 'q') {
      encrypted += 'j';
    } else if (s[i] == 'p') {
      encrypted += 'k';
    } else if (s[i] == 'o') {
      encrypted += 'l';
    } else if (s[i] == 'n') {
      encrypted += 'm';
    } else if (s[i] == 'm') {
      encrypted += 'n';
    } else if (s[i] == 'l') {
      encrypted += 'o';
    } else if (s[i] == 'k') {
      encrypted += 'p';
    } else if (s[i] == 'j') {
      encrypted += 'q';
    } else if (s[i] == 'i') {
      encrypted += 'r';
    } else if (s[i] == 'h') {
      encrypted += 's';
    } else if (s[i] == 'g') {
      encrypted += 't';
    } else if (s[i] == 'f') {
      encrypted += 'u';
    } else if (s[i] == 'e

}
int main() {
    auto candidate = encrypt;
    assert(candidate(("hi")) == ("lm"));
    assert(candidate(("asdfghjkl")) == ("ewhjklnop"));
    assert(candidate(("gf")) == ("kj"));
    assert(candidate(("et")) == ("ix"));
    assert(candidate(("faewfawefaewg")) == ("jeiajeaijeiak"));
    assert(candidate(("hellomyfriend")) == ("lippsqcjvmirh"));
    assert(candidate(("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")) == ("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"));
    assert(candidate(("a")) == ("e"));
}
