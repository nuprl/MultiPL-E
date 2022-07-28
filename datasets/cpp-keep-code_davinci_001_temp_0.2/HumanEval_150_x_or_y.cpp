#include<assert.h>
#include<bits/stdc++.h>
// A simple program which should return the value of x if n is 
// a prime number and should return the value of y otherwise.
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
long x_or_y(long n, long x, long y) {
	assert(n > 0);
	assert(x > 0);
	assert(y > 0);
	if (n == 2) {
		return x;
	}
	if (n % 2 == 0) {
		return y;
	}
	for (long i = 3; i <= sqrt(n); i += 2) {
		if (n % i == 0) {
			return y;
		}
	}
	return x;

}
int main() {
    auto candidate = x_or_y;
    assert(candidate((7), (34), (12)) == (34));
    assert(candidate((15), (8), (5)) == (5));
    assert(candidate((3), (33), (5212)) == (33));
    assert(candidate((1259), (3), (52)) == (3));
    assert(candidate((7919), (-1), (12)) == (-1));
    assert(candidate((3609), (1245), (583)) == (583));
    assert(candidate((91), (56), (129)) == (129));
    assert(candidate((6), (34), (1234)) == (1234));
    assert(candidate((1), (2), (0)) == (0));
    assert(candidate((2), (2), (0)) == (2));
}
