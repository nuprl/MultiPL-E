#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
std::string int_to_mini_roman(long number) {
    std::string roman = "";
    std::map<int, std::string> roman_map = {
        {1000, "m"},
        {900, "cm"},
        {500, "d"},
        {400, "cd"},
        {100, "c"},
        {90, "xc"},
        {50, "l"},
        {40, "xl"},
        {10, "x"},
        {9, "ix"},
        {5, "v"},
        {4, "iv"},
        {1, "i"}
    };
    for (auto it = roman_map.begin(); it != roman_map.end(); it++) {
        while (number >= it->first) {
            roman += it->second;
            number -= it->first;
        }
    }
    return roman;
}


int main() {
    auto candidate = int_to_mini_roman;
    assert(candidate((19)) == ("xix"));
    assert(candidate((152)) == ("clii"));
    assert(candidate((251)) == ("ccli"));
    assert(candidate((426)) == ("cdxxvi"));
    assert(candidate((500)) == ("d"));
    assert(candidate((1)) == ("i"));
    assert(candidate((4)) == ("iv"));
    assert(candidate((43)) == ("xliii"));
    assert(candidate((90)) == ("xc"));
    assert(candidate((94)) == ("xciv"));
    assert(candidate((532)) == ("dxxxii"));
    assert(candidate((900)) == ("cm"));
    assert(candidate((994)) == ("cmxciv"));
    assert(candidate((1000)) == ("m"));
}