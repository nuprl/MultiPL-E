#include<assert.h>
#include<bits/stdc++.h>
// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> change_base(8, 3)
// '22'
// >>> change_base(8, 2)
// '1000'
// >>> change_base(7, 2)
// '111'
std::string change_base(long x, long base) {
    std::string result;
    while (x) {
        result.push_back('0' + x % base);
        x /= base;
    }
    std::reverse(result.begin(), result.end());
    return result;

}
int main() {
    auto candidate = change_base;
    assert(candidate((8), (3)) == ("22"));
    assert(candidate((9), (3)) == ("100"));
    assert(candidate((234), (2)) == ("11101010"));
    assert(candidate((16), (2)) == ("10000"));
    assert(candidate((8), (2)) == ("1000"));
    assert(candidate((7), (2)) == ("111"));
    assert(candidate((2), (3)) == ("2"));
    assert(candidate((3), (4)) == ("3"));
    assert(candidate((4), (5)) == ("4"));
    assert(candidate((5), (6)) == ("5"));
    assert(candidate((6), (7)) == ("6"));
    assert(candidate((7), (8)) == ("7"));
}
