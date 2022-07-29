#include<assert.h>
#include<bits/stdc++.h>
// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
float mean_absolute_deviation(std::vector<float> numbers) {
    float sum = 0;
    float mean = 0;
    float mad = 0;
    for (int i = 0; i < numbers.size(); i++) {
        sum += numbers[i];
    }
    mean = sum / numbers.size();
    for (int i = 0; i < numbers.size(); i++) {
        mad += abs(numbers[i] - mean);
    }
    mad = mad / numbers.size();
    return mad;

}
int main() {
    auto candidate = mean_absolute_deviation;
    assert(candidate((std::vector<float>({1.0, 2.0}))) == (0.5));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0}))) == (1.0));
    assert(candidate((std::vector<float>({1.0, 2.0, 3.0, 4.0, 5.0}))) == (1.2));
}
