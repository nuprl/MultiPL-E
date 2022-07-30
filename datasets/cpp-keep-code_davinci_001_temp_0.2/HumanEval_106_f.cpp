#include<assert.h>
#include<bits/stdc++.h>
// Implement the function f that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(5) == [1, 2, 6, 24, 15]
std::vector<long> f(long n) {
    std::vector<long> result;
    for (long i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            result.push_back(factorial(i));
        } else {
            result.push_back(sum(i));
        }
    }
    return result;

}
int main() {
    auto candidate = f;
    assert(candidate((5)) == (std::vector<long>({(long)1, (long)2, (long)6, (long)24, (long)15})));
    assert(candidate((7)) == (std::vector<long>({(long)1, (long)2, (long)6, (long)24, (long)15, (long)720, (long)28})));
    assert(candidate((1)) == (std::vector<long>({(long)1})));
    assert(candidate((3)) == (std::vector<long>({(long)1, (long)2, (long)6})));
}
