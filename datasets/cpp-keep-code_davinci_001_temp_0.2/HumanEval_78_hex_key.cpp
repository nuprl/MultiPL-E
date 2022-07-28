#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You have been tasked to write a function that receives 
// a hexadecimal number as a string and counts the number of hexadecimal 
// digits that are primes (prime number, or a prime, is a natural number 
// greater than 1 that is not a product of two smaller natural numbers).
// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
// So you have to determine a number of the following digits: 2, 3, 5, 7, 
// B (=decimal 11), D (=decimal 13).
// Note: you may assume the input is always correct or empty string, 
// and symbols A,B,C,D,E,F are always uppercase.
// Examples:
// For num = "AB" the output should be 1.
// For num = "1077E" the output should be 2.
// For num = "ABED1A33" the output should be 4.
// For num = "123456789ABCDEF0" the output should be 6.
// For num = "2020" the output should be 2.
long hex_key(std::string num) {
    std::map<char, long> hex_map;
    hex_map['0'] = 0;
    hex_map['1'] = 1;
    hex_map['2'] = 2;
    hex_map['3'] = 3;
    hex_map['4'] = 4;
    hex_map['5'] = 5;
    hex_map['6'] = 6;
    hex_map['7'] = 7;
    hex_map['8'] = 8;
    hex_map['9'] = 9;
    hex_map['A'] = 10;
    hex_map['B'] = 11;
    hex_map['C'] = 12;
    hex_map['D'] = 13;
    hex_map['E'] = 14;
    hex_map['F'] = 15;
    long count = 0;
    for (auto c : num) {
        if (hex_map[c] == 2 || hex_map[c] == 3 || hex_map[c] == 5 || hex_map[c] == 7 || hex_map[c] == 11 || hex_map[c] == 13) {
            count++;
        }
    }
    return count;
}


int main() {
    auto candidate = hex_key;
    assert(candidate(("AB")) == (1));
    assert(candidate(("1077E")) == (2));
    assert(candidate(("ABED1A33")) == (4));
    assert(candidate(("2020")) == (2));
    assert(candidate(("123456789ABCDEF0")) == (6));
    assert(candidate(("112233445566778899AABBCCDDEEFF00")) == (12));
    assert(candidate((std::string())) == (0));
}