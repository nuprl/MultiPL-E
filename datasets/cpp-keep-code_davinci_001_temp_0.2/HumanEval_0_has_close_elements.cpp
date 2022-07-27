#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
bool has_close_elements(std::vector<float> numbers, float threshold) {
    std::map<float, int> m;
    for (auto n : numbers) {
        m[n]++;
    }
    for (auto n : numbers) {
        if (m[n] > 1) {
            return true;
        }
        for (auto n2 : numbers) {
            if (n != n2) {
                if (std::abs(n - n2) < threshold) {
                    return true;
                }
            }
        }
    }
    return false;
}


int main() {
    auto candidate = has_close_elements;
    assert(candidate((std::vector<float>({1.0, 2.0, 3.9, 4.0, 5.0, 2.2})), (0.3)) == (true));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.9, 4.0, 5.0, 2.2})), (0.05)) == (false));
    assert(candidate((std::vector<float>({1.0, 2.0, 5.9, 4.0, 5.0})), (0.95)) == (true));
    assert(candidate((std::vector<float>({1.0, 2.0, 5.9, 4.0, 5.0})), (0.8)) == (false));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0, 2.0})), (0.1)) == (true));
    assert(candidate((std::vector<float>({1.1, 2.2, 3.1, 4.1, 5.1})), (1.0)) == (true));
    assert(candidate((std::vector<float>({1.1, 2.2, 3.1, 4.1, 5.1})), (0.5)) == (false));
}