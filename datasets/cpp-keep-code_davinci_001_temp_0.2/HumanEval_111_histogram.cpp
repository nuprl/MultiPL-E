#include<assert.h>
#include<bits/stdc++.h>
// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
std::map<std::string,long> histogram(std::string test) {
    std::map<std::string,long> result;
    std::string::iterator it;
    std::string::iterator it2;
    std::string::iterator it3;
    std::string::iterator it4;
    std::string::iterator it5;
    std::string::iterator it6;
    std::string::iterator it7;
    std::string::iterator it8;
    std::string::iterator it9;
    std::string::iterator it10;
    std::string::iterator it11;
    std::string::iterator it12;
    std::string::iterator it13;
    std::string::iterator it14;
    std::string::iterator it15;
    std::string::iterator it16;
    std::string::iterator it17;
    std::string::iterator it18;
    std::string::iterator it19;
    std::string::iterator it20;
    std::string::iterator it21;
    std::string::iterator it22;
    std::string::iterator it23;
    std::string::iterator it24;
    std::string::iterator it25;
    std::string::iterator it26;
    std::string::iterator it27;
    std::string::iterator it28;
    std::string::iterator it29;
    std::string::iterator it30;
    std::string::iterator it31;
    std::string::iterator it32;
    std::string::iterator it33;
    std::string::iterator it34;
    std::string::iterator it35;
    std::string::iterator it36;
    std::string::iterator it37;
    std::string::iterator it38;
    std::string::iterator it39;
    std::string::iterator it40;
    std::string::iterator it41;
    std::string::iterator it42;
    std::string::iterator it43;
    std::string::iterator it44;
    std::string::iterator it45;
    std::string::iterator it46;
    std::string::iterator it47;
    std::string::iterator it48;
    std::string::iterator

}
int main() {
    auto candidate = histogram;
    assert(candidate(("a b b a")) == (std::map<std::string,long>({{"a", 2}, {"b", 2}})));
    assert(candidate(("a b c a b")) == (std::map<std::string,long>({{"a", 2}, {"b", 2}})));
    assert(candidate(("a b c d g")) == (std::map<std::string,long>({{"a", 1}, {"b", 1}, {"c", 1}, {"d", 1}, {"g", 1}})));
    assert(candidate(("r t g")) == (std::map<std::string,long>({{"r", 1}, {"t", 1}, {"g", 1}})));
    assert(candidate(("b b b b a")) == (std::map<std::string,long>({{"b", 4}})));
    assert(candidate(("r t g")) == (std::map<std::string,long>({{"r", 1}, {"t", 1}, {"g", 1}})));
    assert(candidate(("")) == (std::map<std::string,long>()));
    assert(candidate(("a")) == (std::map<std::string,long>({{"a", 1}})));
}
