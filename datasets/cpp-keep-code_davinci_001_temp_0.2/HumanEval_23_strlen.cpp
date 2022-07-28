#include<assert.h>
#include<bits/stdc++.h>
// Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
long strlen(std::string string) {
    long len = 0;
    for (char c : string) {
        len++;
    }
    return len;

}
int main() {
    auto candidate = strlen;
    assert(candidate(("")) == (0));
    assert(candidate(("x")) == (1));
    assert(candidate(("asdasnakj")) == (9));
}
