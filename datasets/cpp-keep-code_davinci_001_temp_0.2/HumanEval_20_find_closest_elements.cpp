#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
std::tuple<float, float> find_closest_elements(std::vector<float> numbers) {
    std::tuple<float, float> result;
    float min_diff = std::numeric_limits<float>::max();
    for (int i = 0; i < numbers.size(); i++) {
        for (int j = i + 1; j < numbers.size(); j++) {
            float diff = std::abs(numbers[i] - numbers[j]);
            if (diff < min_diff) {
                min_diff = diff;
                result = std::make_tuple(numbers[i], numbers[j]);
            }
        }
    }
    return result;
}


int main() {
    auto candidate = find_closest_elements;
    assert(candidate((std::vector<float>({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}))) == (std::make_tuple(float(3.9), float(4.0))));
    assert(candidate((std::vector<float>({1.0, 2.0, 5.9, 4.0, 5.0}))) == (std::make_tuple(float(5.0), float(5.9))));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0, 2.2}))) == (std::make_tuple(float(2.0), float(2.2))));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}))) == (std::make_tuple(float(2.0), float(2.0))));
    assert(candidate((std::vector<float>({1.1, 2.2, 3.1, 4.1, 5.1}))) == (std::make_tuple(float(2.2), float(3.1))));
}