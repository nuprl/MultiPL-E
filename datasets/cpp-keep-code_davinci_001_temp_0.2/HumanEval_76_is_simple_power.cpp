#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
bool is_simple_power(long x, long n) {
    if (x == 1) return true;
    if (x % n != 0) return false;
    return is_simple_power(x / n, n);
}


int main() {
    auto candidate = is_simple_power;
    assert(candidate((16), (2)) == (true));
    assert(candidate((143214), (16)) == (false));
    assert(candidate((4), (2)) == (true));
    assert(candidate((9), (3)) == (true));
    assert(candidate((16), (4)) == (true));
    assert(candidate((24), (2)) == (false));
    assert(candidate((128), (4)) == (false));
    assert(candidate((12), (6)) == (false));
    assert(candidate((1), (1)) == (true));
    assert(candidate((1), (12)) == (true));
}