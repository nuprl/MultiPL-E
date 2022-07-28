#include<assert.h>
#include<bits/stdc++.h>
// Return true if a given number is prime, and false otherwise.
// >>> is_prime(6)
// False
// >>> is_prime(101)
// True
// >>> is_prime(11)
// True
// >>> is_prime(13441)
// True
// >>> is_prime(61)
// True
// >>> is_prime(4)
// False
// >>> is_prime(1)
// False
bool is_prime(long n) {
    if (n <= 1) {
        return false;
    }
    if (n <= 3) {
        return true;
    }
    if (n % 2 == 0 || n % 3 == 0) {
        return false;
    }
    for (long i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0) {
            return false;
        }
    }
    return true;

}
int main() {
    auto candidate = is_prime;
    assert(candidate((6)) == (false));
    assert(candidate((101)) == (true));
    assert(candidate((11)) == (true));
    assert(candidate((13441)) == (true));
    assert(candidate((61)) == (true));
    assert(candidate((4)) == (false));
    assert(candidate((1)) == (false));
    assert(candidate((5)) == (true));
    assert(candidate((11)) == (true));
    assert(candidate((17)) == (true));
    assert(candidate((85)) == (false));
    assert(candidate((77)) == (false));
    assert(candidate((255379)) == (false));
}
