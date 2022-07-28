#include<assert.h>
#include<bits/stdc++.h>
// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
std::string solve(std::string s) {
    std::string res;
    for(int i = 0; i < s.size(); i++) {
        if(isalpha(s[i])) {
            if(isupper(s[i])) {
                res += tolower(s[i]);
            } else {
                res += toupper(s[i]);
            }
        } else {
            res += s[i];
        }
    }
    return res;

}
int main() {
    auto candidate = solve;
    assert(candidate(("AsDf")) == ("aSdF"));
    assert(candidate(("1234")) == ("4321"));
    assert(candidate(("ab")) == ("AB"));
    assert(candidate(("#a@C")) == ("#A@c"));
    assert(candidate(("#AsdfW^45")) == ("#aSDFw^45"));
    assert(candidate(("#6@2")) == ("2@6#"));
    assert(candidate(("#$a^D")) == ("#$A^d"));
    assert(candidate(("#ccc")) == ("#CCC"));
}
