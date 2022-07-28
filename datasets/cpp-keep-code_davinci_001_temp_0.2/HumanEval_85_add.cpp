#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a non-empty list of integers lst. add the even elements that are at odd indices..
// Examples:
// add([4, 2, 6, 7]) ==> 2
long add(std::vector<long> lst) {
    long sum = 0;
    for (int i = 0; i < lst.size(); i++) {
        if (i % 2 == 1 && lst[i] % 2 == 0) {
            sum += lst[i];
        }
    }
    return sum;
}


int main() {
    auto candidate = add;
    assert(candidate((std::vector<long>({4, 88}))) == (88));
    assert(candidate((std::vector<long>({4, 5, 6, 7, 2, 122}))) == (122));
    assert(candidate((std::vector<long>({4, 0, 6, 7}))) == (0));
    assert(candidate((std::vector<long>({4, 4, 6, 8}))) == (12));
}