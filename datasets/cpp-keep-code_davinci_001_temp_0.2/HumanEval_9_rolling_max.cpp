#include<assert.h>
#include<bits/stdc++.h>
// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
std::vector<long> rolling_max(std::vector<long> numbers) {
    std::vector<long> result;
    result.push_back(numbers[0]);
    for (int i = 1; i < numbers.size(); i++) {
        result.push_back(std::max(result[i - 1], numbers[i]));
    }
    return result;

}
int main() {
    auto candidate = rolling_max;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({1, 2, 3, 4}))) == (std::vector<long>({1, 2, 3, 4})));
    assert(candidate((std::vector<long>({4, 3, 2, 1}))) == (std::vector<long>({4, 4, 4, 4})));
    assert(candidate((std::vector<long>({3, 2, 3, 100, 3}))) == (std::vector<long>({3, 3, 3, 100, 100})));
}
