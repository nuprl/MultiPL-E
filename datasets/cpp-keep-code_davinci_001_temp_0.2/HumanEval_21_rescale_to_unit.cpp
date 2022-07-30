#include<assert.h>
#include<bits/stdc++.h>
// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
std::vector<float> rescale_to_unit(std::vector<float> numbers) {
    float min = numbers[0];
    float max = numbers[0];
    for (float num : numbers) {
        if (num < min) {
            min = num;
        }
        if (num > max) {
            max = num;
        }
    }
    std::vector<float> result;
    for (float num : numbers) {
        result.push_back((num - min) / (max - min));
    }
    return result;

}
int main() {
    auto candidate = rescale_to_unit;
    assert(candidate((std::vector<float>({(float)2.0, (float)49.9}))) == (std::vector<float>({(float)0.0, (float)1.0})));
    assert(candidate((std::vector<float>({(float)100.0, (float)49.9}))) == (std::vector<float>({(float)1.0, (float)0.0})));
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)3.0, (float)4.0, (float)5.0}))) == (std::vector<float>({(float)0.0, (float)0.25, (float)0.5, (float)0.75, (float)1.0})));
    assert(candidate((std::vector<float>({(float)2.0, (float)1.0, (float)5.0, (float)3.0, (float)4.0}))) == (std::vector<float>({(float)0.25, (float)0.0, (float)1.0, (float)0.5, (float)0.75})));
    assert(candidate((std::vector<float>({(float)12.0, (float)11.0, (float)15.0, (float)13.0, (float)14.0}))) == (std::vector<float>({(float)0.25, (float)0.0, (float)1.0, (float)0.5, (float)0.75})));
}
