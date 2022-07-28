#include<assert.h>
#include<bits/stdc++.h>
// Return a greatest common divisor of two integers a and b
// >>> greatest_common_divisor(3, 5)
// 1
// >>> greatest_common_divisor(25, 15)
// 5
long greatest_common_divisor(long a, long b) {
    if (a == 0) return b;
    if (b == 0) return a;
    if (a == b) return a;
    if (a > b) return greatest_common_divisor(a - b, b);
    return greatest_common_divisor(a, b - a);

}
int main() {
    auto candidate = greatest_common_divisor;
    assert(candidate((3), (7)) == (1));
    assert(candidate((10), (15)) == (5));
    assert(candidate((49), (14)) == (7));
    assert(candidate((144), (60)) == (12));
}
