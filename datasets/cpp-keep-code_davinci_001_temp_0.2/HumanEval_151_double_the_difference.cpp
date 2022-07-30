#include<assert.h>
#include<bits/stdc++.h>
// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// double_the_difference([-1, -2, 0]) == 0
// double_the_difference([9, -2]) == 81
// double_the_difference([0]) == 0  
// If the input list is empty, return 0.
long double_the_difference(std::vector<float> lst) {
    long sum = 0;
    for (auto i : lst) {
        if (i > 0 && i % 2 != 0) {
            sum += i * i;
        }
    }
    return sum;

}
int main() {
    auto candidate = double_the_difference;
    assert(candidate((std::vector<float>())) == (0));
    assert(candidate((std::vector<float>({(float)5.0, (float)4.0}))) == (25));
    assert(candidate((std::vector<float>({(float)0.1, (float)0.2, (float)0.3}))) == (0));
    assert(candidate((std::vector<float>({(float)-10.0, (float)-20.0, (float)-30.0}))) == (0));
    assert(candidate((std::vector<float>({(float)-1.0, (float)-2.0, (float)8.0}))) == (0));
    assert(candidate((std::vector<float>({(float)0.2, (float)3.0, (float)5.0}))) == (34));
    assert(candidate((std::vector<float>({(float)-9.0, (float)-7.0, (float)-5.0, (float)-3.0, (float)-1.0, (float)1.0, (float)3.0, (float)5.0, (float)7.0, (float)9.0}))) == (165));
}
