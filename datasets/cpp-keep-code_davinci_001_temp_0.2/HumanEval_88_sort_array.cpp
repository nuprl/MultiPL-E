#include<assert.h>
#include<bits/stdc++.h>
// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
// Note:
// * don't change the given array.
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
std::vector<long> sort_array(std::vector<long> array) {
    std::vector<long> result;
    if (array.size() == 0) {
        return result;
    }
    std::vector<long> odd;
    std::vector<long> even;
    for (long i = 0; i < array.size(); i++) {
        if (array[i] % 2 == 0) {
            even.push_back(array[i]);
        } else {
            odd.push_back(array[i]);
        }
    }
    if (odd.size() > even.size()) {
        std::sort(odd.begin(), odd.end());
        std::sort(even.begin(), even.end(), std::greater<long>());
    } else {
        std::sort(odd.begin(), odd.end(), std::greater<long>());
        std::sort(even.begin(), even.end());
    }
    for (long i = 0; i < odd.size(); i++) {
        result.push_back(odd[i]);
    }
    for (long i = 0; i < even.size(); i++) {
        result.push_back(even[i]);
    }
    return result;

}
int main() {
    auto candidate = sort_array;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)5}))) == (std::vector<long>({(long)5})));
    assert(candidate((std::vector<long>({(long)2, (long)4, (long)3, (long)0, (long)1, (long)5}))) == (std::vector<long>({(long)0, (long)1, (long)2, (long)3, (long)4, (long)5})));
    assert(candidate((std::vector<long>({(long)2, (long)4, (long)3, (long)0, (long)1, (long)5, (long)6}))) == (std::vector<long>({(long)6, (long)5, (long)4, (long)3, (long)2, (long)1, (long)0})));
    assert(candidate((std::vector<long>({(long)2, (long)1}))) == (std::vector<long>({(long)1, (long)2})));
    assert(candidate((std::vector<long>({(long)15, (long)42, (long)87, (long)32, (long)11, (long)0}))) == (std::vector<long>({(long)0, (long)11, (long)15, (long)32, (long)42, (long)87})));
    assert(candidate((std::vector<long>({(long)21, (long)14, (long)23, (long)11}))) == (std::vector<long>({(long)23, (long)21, (long)14, (long)11})));
}
