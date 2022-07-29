#include<assert.h>
#include<bits/stdc++.h>
// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
std::tuple<float, float> find_closest_elements(std::vector<float> numbers) {
    assert(numbers.size() >= 2);
    float min_diff = std::numeric_limits<float>::max();
    int min_diff_index = 0;
    for (int i = 0; i < numbers.size() - 1; i++) {
        float diff = numbers[i + 1] - numbers[i];
        if (diff < min_diff) {
            min_diff = diff;
            min_diff_index = i;
        }
    }
    return std::make_tuple(numbers[min_diff_index], numbers[min_diff_index + 1]);

}
int main() {
    auto candidate = find_closest_elements;
    assert(candidate((std::vector<float>({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}))) == (std::make_tuple(3.9, 4.0)));
    assert(candidate((std::vector<float>({1.0, 2.0, 5.9, 4.0, 5.0}))) == (std::make_tuple(5.0, 5.9)));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0, 2.2}))) == (std::make_tuple(2.0, 2.2)));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}))) == (std::make_tuple(2.0, 2.0)));
    assert(candidate((std::vector<float>({1.1, 2.2, 3.1, 4.1, 5.1}))) == (std::make_tuple(2.2, 3.1)));
}
