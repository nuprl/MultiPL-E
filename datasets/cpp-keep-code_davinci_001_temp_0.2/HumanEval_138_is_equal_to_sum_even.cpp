#include<assert.h>
#include<bits/stdc++.h>
// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == False
// is_equal_to_sum_even(6) == False
// is_equal_to_sum_even(8) == True
bool is_equal_to_sum_even(long n) {
    if (n % 2 != 0) return false;
    for (int i = 2; i <= n; i += 2) {
        for (int j = i; j <= n; j += 2) {
            for (int k = j; k <= n; k += 2) {
                for (int l = k; l <= n; l += 2) {
                    if (i + j + k + l == n) return true;
                }
            }
        }
    }
    return false;

}
int main() {
    auto candidate = is_equal_to_sum_even;
    assert(candidate((4)) == (false));
    assert(candidate((6)) == (false));
    assert(candidate((8)) == (true));
    assert(candidate((10)) == (true));
    assert(candidate((11)) == (false));
    assert(candidate((12)) == (true));
    assert(candidate((13)) == (false));
    assert(candidate((16)) == (true));
}
