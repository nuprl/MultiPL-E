#include<assert.h>
#include<bits/stdc++.h>
// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(8)
// [2, 2, 2]
// >>> factorize(25)
// [5, 5]
// >>> factorize(70)
// [2, 5, 7]
std::vector<long> factorize(long n) {
    std::vector<long> factors;
    for (long i = 2; i <= n; ++i) {
        while (n % i == 0) {
            factors.push_back(i);
            n /= i;
        }
    }
    return factors;

}
int main() {
    auto candidate = factorize;
    assert(candidate((2)) == (std::vector<long>({2})));
    assert(candidate((4)) == (std::vector<long>({2, 2})));
    assert(candidate((8)) == (std::vector<long>({2, 2, 2})));
    assert(candidate((57)) == (std::vector<long>({3, 19})));
    assert(candidate((3249)) == (std::vector<long>({3, 3, 19, 19})));
    assert(candidate((185193)) == (std::vector<long>({3, 3, 3, 19, 19, 19})));
    assert(candidate((20577)) == (std::vector<long>({3, 19, 19, 19})));
    assert(candidate((18)) == (std::vector<long>({2, 3, 3})));
}
