#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
std::vector<float> rescale_to_unit(std::vector<float> numbers) {
    std::vector<float> result;
    float min = numbers[0];
    float max = numbers[0];
    for (auto n : numbers) {
        if (n < min) {
            min = n;
        }
        if (n > max) {
            max = n;
        }
    }
    for (auto n : numbers) {
        result.push_back((n - min) / (max - min));
    }
    return result;
}
std::vector<float> numbers = {1.0, 2.0, 3.0, 4.0, 5.0};
std::vector<float> result = rescale_to_unit(numbers);
for (auto n : result) {
    std::cout << n << ", ";
}
// Given a list of numbers, return a list of numbers that is the cumulative sum of the original list
// >>> cumulative_sum([1.0, 2.0, 3.0, 4.0, 5.0])
// [1.0, 3.0, 6.0, 10.0, 15.0]
std::vector<float> cumulative_sum(std::vector<float> numbers) {
    std::vector<float> result;
    float sum = 0;
    for (auto n : numbers) {
        sum += n;
        result.push_back(sum);
    }
    return result;
}
std::vector<float> numbers = {1.0, 2.0, 3.0, 4.0, 5.0};
std::vector<float> result = cumulative_sum(numbers);
for (auto n : result) {
    std::cout << n << ", ";
}
// Given a list of numbers, return a list of numbers that is the cumulative sum of the original list,
// but with the first element replaced by 0
// >>> cumulative_sum_with_first_zeroed([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 1.0, 3.0, 6.0, 10.0, 15.0]
std::vector<


int main() {
    auto candidate = rescale_to_unit;
    assert(candidate((std::vector<float>({2.0, 49.9}))) == (std::vector<float>({0.0, 1.0})));
    assert(candidate((std::vector<float>({100.0, 49.9}))) == (std::vector<float>({1.0, 0.0})));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0}))) == (std::vector<float>({0.0, 0.25, 0.5, 0.75, 1.0})));
    assert(candidate((std::vector<float>({2.0, 1.0, 5.0, 3.0, 4.0}))) == (std::vector<float>({0.25, 0.0, 1.0, 0.5, 0.75})));
    assert(candidate((std::vector<float>({12.0, 11.0, 15.0, 13.0, 14.0}))) == (std::vector<float>({0.25, 0.0, 1.0, 0.5, 0.75})));
}