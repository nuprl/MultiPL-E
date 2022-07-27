#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// In this task, you will be given a string that represents a number of apples and oranges 
// that are distributed in a basket of fruit this basket contains 
// apples, oranges, and mango fruits. Given the string that represents the total number of 
// the oranges and apples and an integer that represent the total number of the fruits 
// in the basket return the number of the mango fruits in the basket.
// for examble:
// fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
// fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
// fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
// fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
long fruit_distribution(std::string s, long n) {
    std::vector<std::string> v;
    std::string temp;
    for (int i = 0; i < s.size(); i++) {
        if (s[i] == ' ') {
            v.push_back(temp);
            temp = "";
        } else {
            temp += s[i];
        }
    }
    v.push_back(temp);
    long apples = std::stol(v[0]);
    long oranges = std::stol(v[1]);
    return n - apples - oranges;
}


int main() {
    auto candidate = fruit_distribution;
    assert(candidate(("5 apples and 6 oranges"), (19)) == (8));
    assert(candidate(("5 apples and 6 oranges"), (21)) == (10));
    assert(candidate(("0 apples and 1 oranges"), (3)) == (2));
    assert(candidate(("1 apples and 0 oranges"), (3)) == (2));
    assert(candidate(("2 apples and 3 oranges"), (100)) == (95));
    assert(candidate(("2 apples and 3 oranges"), (5)) == (0));
    assert(candidate(("1 apples and 100 oranges"), (120)) == (19));
}