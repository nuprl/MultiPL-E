#include<assert.h>
#include<bits/stdc++.h>
// Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
bool has_close_elements(std::vector<float> numbers, float threshold) {
    std::vector<float>::iterator it;
    for(it = numbers.begin(); it != numbers.end(); it++) {
        std::vector<float>::iterator it2;
        for(it2 = it+1; it2 != numbers.end(); it2++) {
            if(std::abs(*it - *it2) < threshold) {
                return true;
            }
        }
    }
    return false;

}
int main() {
    auto candidate = has_close_elements;
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)3.9, (float)4.0, (float)5.0, (float)2.2})), (0.3)) == (true));
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)3.9, (float)4.0, (float)5.0, (float)2.2})), (0.05)) == (false));
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)5.9, (float)4.0, (float)5.0})), (0.95)) == (true));
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)5.9, (float)4.0, (float)5.0})), (0.8)) == (false));
    assert(candidate((std::vector<float>({(float)1.0, (float)2.0, (float)3.0, (float)4.0, (float)5.0, (float)2.0})), (0.1)) == (true));
    assert(candidate((std::vector<float>({(float)1.1, (float)2.2, (float)3.1, (float)4.1, (float)5.1})), (1.0)) == (true));
    assert(candidate((std::vector<float>({(float)1.1, (float)2.2, (float)3.1, (float)4.1, (float)5.1})), (0.5)) == (false));
}
