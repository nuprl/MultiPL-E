#include<assert.h>
#include<bits/stdc++.h>
// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
std::string flip_case(std::string string) {
    std::string result;
    for (int i = 0; i < string.length(); i++) {
        if (string[i] >= 'A' && string[i] <= 'Z') {
            result += string[i] + 32;
        } else if (string[i] >= 'a' && string[i] <= 'z') {
            result += string[i] - 32;
        } else {
            result += string[i];
        }
    }
    return result;

}
int main() {
    auto candidate = flip_case;
    assert(candidate(("")) == (""));
    assert(candidate(("Hello!")) == ("hELLO!"));
    assert(candidate(("These violent delights have violent ends")) == ("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"));
}
