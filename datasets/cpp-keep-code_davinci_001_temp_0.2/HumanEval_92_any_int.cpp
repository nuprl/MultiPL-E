#include<assert.h>
#include<bits/stdc++.h>
// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
bool any_int(float x, float y, float z) {
    if(x == y + z || y == x + z || z == x + y)
        return true;
    else
        return false;

}
int main() {
    auto candidate = any_int;
    assert(candidate((float(2)), (float(3)), (float(1))) == (true));
    assert(candidate((2.5), (float(2)), (float(3))) == (false));
    assert(candidate((1.5), (float(5)), (3.5)) == (false));
    assert(candidate((float(2)), (float(6)), (float(2))) == (false));
    assert(candidate((float(4)), (float(2)), (float(2))) == (true));
    assert(candidate((2.2), (2.2), (2.2)) == (false));
    assert(candidate((float(-4)), (float(6)), (float(2))) == (true));
    assert(candidate((float(2)), (float(1)), (float(1))) == (true));
    assert(candidate((float(3)), (float(4)), (float(7))) == (true));
    assert(candidate((3.0), (float(4)), (float(7))) == (false));
}
