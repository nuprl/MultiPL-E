#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100. 
// Example:
// is_multiply_prime(30) == True
// 30 = 2 * 3 * 5
bool is_multiply_prime(long a) {
    if (a < 3) return false;
    for (int i = 2; i < a; i++) {
        if (a % i == 0) {
            return false;
        }
    }
    return true;
}


int main() {
    auto candidate = is_multiply_prime;
    assert(candidate((5)) == (false));
    assert(candidate((30)) == (true));
    assert(candidate((8)) == (true));
    assert(candidate((10)) == (false));
    assert(candidate((125)) == (true));
    assert(candidate((105)) == (true));
    assert(candidate((126)) == (false));
    assert(candidate((729)) == (false));
    assert(candidate((891)) == (false));
    assert(candidate((1001)) == (true));
}