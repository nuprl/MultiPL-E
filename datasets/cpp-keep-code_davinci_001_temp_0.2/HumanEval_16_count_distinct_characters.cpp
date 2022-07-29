#include<assert.h>
#include<bits/stdc++.h>
// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters('xyzXYZ')
// 3
// >>> count_distinct_characters('Jerry')
// 4
long count_distinct_characters(std::string string) {
    std::unordered_set<char> distinct_characters;
    for (auto character : string) {
        distinct_characters.insert(tolower(character));
    }
    return distinct_characters.size();

}
int main() {
    auto candidate = count_distinct_characters;
    assert(candidate(("")) == (0));
    assert(candidate(("abcde")) == (5));
    assert(candidate(("abcdecadeCADE")) == (5));
    assert(candidate(("aaaaAAAAaaaa")) == (1));
    assert(candidate(("Jerry jERRY JeRRRY")) == (5));
}
