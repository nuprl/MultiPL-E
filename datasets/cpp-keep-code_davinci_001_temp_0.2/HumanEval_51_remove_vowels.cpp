#include<assert.h>
#include<bits/stdc++.h>
// remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels('')
// ''
// >>> remove_vowels('abcdef')
// 'bcdf'
// >>> remove_vowels('aaaaa')
// ''
// >>> remove_vowels('aaBAA')
// 'B'
// >>> remove_vowels('zbcd')
// 'zbcd'
std::string remove_vowels(std::string text) {
    std::string vowels = "aeiou";
    std::string result;
    for (int i = 0; i < text.length(); i++) {
        if (vowels.find(text[i]) == std::string::npos) {
            result += text[i];
        }
    }
    return result;

}
int main() {
    auto candidate = remove_vowels;
    assert(candidate(("")) == (""));
    assert(candidate(("abcdef
ghijklm")) == ("bcdf
ghjklm"));
    assert(candidate(("fedcba")) == ("fdcb"));
    assert(candidate(("eeeee")) == (""));
    assert(candidate(("acBAA")) == ("cB"));
    assert(candidate(("EcBOO")) == ("cB"));
    assert(candidate(("ybcd")) == ("ybcd"));
}
