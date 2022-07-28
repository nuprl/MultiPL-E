#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// For example:
// >>> special_factorial(4)
// 288
// The function will receive an integer as input and should return the special
// factorial of this integer.
long special_factorial(long n) {
    long result = 1;
    for (long i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}


int main() {
    auto candidate = special_factorial;
    assert(candidate((4)) == (288));
    assert(candidate((5)) == (34560));
    assert(candidate((7)) == (125411328000));
    assert(candidate((1)) == (1));
}