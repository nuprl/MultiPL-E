#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function that takes an integer a and returns True 
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> True
// iscube(2) ==> False
// iscube(-1) ==> True
// iscube(64) ==> True
// iscube(0) ==> True
// iscube(180) ==> False
bool iscube(long a) {
    if (a < 0) {
        a = -a;
    }
    if (a == 0) {
        return true;
    }
    long b = 1;
    while (b * b * b < a) {
        b++;
    }
    return b * b * b == a;
}
// Write a function that takes an integer a and returns True 
// if this ingeger is a power of two.
// Note: you may assume the input is always valid.
// Examples:
// ispowerof2(1) ==> True
// ispowerof2(2) ==> True
// ispowerof2(3) ==> False
// ispowerof2(0) ==> False
// ispowerof2(-1) ==> False


int main() {
    auto candidate = iscube;
    assert(candidate((1)) == (true));
    assert(candidate((2)) == (false));
    assert(candidate((-1)) == (true));
    assert(candidate((64)) == (true));
    assert(candidate((180)) == (false));
    assert(candidate((1000)) == (true));
    assert(candidate((0)) == (true));
    assert(candidate((1729)) == (false));
}