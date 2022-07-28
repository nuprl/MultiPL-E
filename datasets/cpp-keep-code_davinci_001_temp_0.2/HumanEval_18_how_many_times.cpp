#include<assert.h>
#include<bits/stdc++.h>
// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> how_many_times('', 'a')
// 0
// >>> how_many_times('aaa', 'a')
// 3
// >>> how_many_times('aaaa', 'aa')
// 3
long how_many_times(std::string string, std::string substring) {
    assert(string.size() >= substring.size());
    long count = 0;
    for (long i = 0; i <= string.size() - substring.size(); i++) {
        if (string.substr(i, substring.size()) == substring) {
            count++;
        }
    }
    return count;

}
int main() {
    auto candidate = how_many_times;
    assert(candidate((""), ("x")) == (0));
    assert(candidate(("xyxyxyx"), ("x")) == (4));
    assert(candidate(("cacacacac"), ("cac")) == (4));
    assert(candidate(("john doe"), ("john")) == (1));
}
