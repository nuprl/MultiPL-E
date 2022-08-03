#include<assert.h>
#include<bits/stdc++.h>
// Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
long string_length(std::string string) {
    return string.length();

}
int main() {
    auto candidate = string_length;
    assert(candidate(("")) == (0));
    assert(candidate(("x")) == (1));
    assert(candidate(("asdasnakj")) == (9));
}
