#include<assert.h>
#include<bits/stdc++.h>
// Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
// Examples
// >>> closest_integer("10")
// 10
// >>> closest_integer("15.3")
// 15
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closest_integer("14.5") should
// return 15 and closest_integer("-14.5") should return -15.
long closest_integer(std::string value) {
    // Write your code here
    long long int num = stoll(value);
    long long int num1 = num + 1;
    long long int num2 = num - 1;
    long long int num3 = num + 2;
    long long int num4 = num - 2;
    long long int num5 = num + 3;
    long long int num6 = num - 3;
    long long int num7 = num + 4;
    long long int num8 = num - 4;
    long long int num9 = num + 5;
    long long int num10 = num - 5;
    long long int num11 = num + 6;
    long long int num12 = num - 6;
    long long int num13 = num + 7;
    long long int num14 = num - 7;
    long long int num15 = num + 8;
    long long int num16 = num - 8;
    long long int num17 = num + 9;
    long long int num18 = num - 9;
    long long int num19 = num + 10;
    long long int num20 = num - 10;
    long long int num21 = num + 11;
    long long int num22 = num - 11;
    long long int num23 = num + 12;
    long long int num24 = num - 12;
    long long int num25 = num + 13;
    long long int num26 = num - 13;
    long long int num27 = num + 14;
    long long int num28 = num - 14;
    long long int num29 = num + 15;
    long long int num30 = num - 15;
    long long int num31 = num + 16;
    long long int num32 = num - 16;
    long long int num33 = num + 17;
    long long int num34 = num - 17;
    long long int num35 = num + 18;
    long long int num36 = num - 18;
    long long int num37 = num + 19;
    long long int num38 = num - 19;
    long long int num39 = num + 20;
    long long int num40 = num - 20;


}
int main() {
    auto candidate = closest_integer;
    assert(candidate(("10")) == (10));
    assert(candidate(("14.5")) == (15));
    assert(candidate(("-15.5")) == (-16));
    assert(candidate(("15.3")) == (15));
    assert(candidate(("0")) == (0));
}
