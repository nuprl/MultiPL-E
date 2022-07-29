#include<assert.h>
#include<bits/stdc++.h>
// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largest_divisor(15)
// 5
long largest_divisor(long n) {
    long i;
    for (i = n - 1; i > 0; i--) {
        if (n % i == 0) {
            break;
        }
    }
    return i;

}
int main() {
    auto candidate = largest_divisor;
    assert(candidate((3)) == (1));
    assert(candidate((7)) == (1));
    assert(candidate((10)) == (5));
    assert(candidate((100)) == (50));
    assert(candidate((49)) == (7));
}
