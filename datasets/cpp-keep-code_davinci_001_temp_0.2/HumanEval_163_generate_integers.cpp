#include<assert.h>
#include<bits/stdc++.h>
// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
std::vector<long> generate_integers(long a, long b) {
    std::vector<long> result;
    if (a % 2 == 1) {
        a++;
    }
    for (long i = a; i <= b; i += 2) {
        result.push_back(i);
    }
    return result;

}
int main() {
    auto candidate = generate_integers;
    assert(candidate((2), (10)) == (std::vector<long>({(long)2, (long)4, (long)6, (long)8})));
    assert(candidate((10), (2)) == (std::vector<long>({(long)2, (long)4, (long)6, (long)8})));
    assert(candidate((132), (2)) == (std::vector<long>({(long)2, (long)4, (long)6, (long)8})));
    assert(candidate((17), (89)) == (std::vector<long>()));
}
