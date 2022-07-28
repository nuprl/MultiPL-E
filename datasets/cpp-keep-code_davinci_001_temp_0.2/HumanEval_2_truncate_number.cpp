#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
float truncate_number(float number) {
    float decimal = number - floor(number);
    return decimal;
}


int main() {
    auto candidate = truncate_number;
    assert(candidate((3.5)) == (0.5));
    assert(candidate((1.25)) == (0.25));
    assert(candidate((123.0)) == (0.0));
}