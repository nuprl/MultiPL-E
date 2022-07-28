#include<assert.h>
#include<bits/stdc++.h>
// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// For example:
// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> order_by_points([]) == []
std::vector<long> order_by_points(std::vector<long> nums) {
    std::vector<long> result;
    std::vector<long> digits;
    std::vector<long> digits_sum;
    std::vector<long> digits_sum_index;
    std::vector<long> digits_sum_index_sort;
    std::vector<long> digits_sum_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index;
    std::vector<long> digits_sum_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort_index_sort;
    std::

}
int main() {
    auto candidate = order_by_points;
    assert(candidate((std::vector<long>({1, 11, -1, -11, -12}))) == (std::vector<long>({-1, -11, 1, -12, 11})));
    assert(candidate((std::vector<long>({1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}))) == (std::vector<long>({0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({1, -11, -32, 43, 54, -98, 2, -3}))) == (std::vector<long>({-3, -32, -98, -11, 1, 2, 43, 54})));
    assert(candidate((std::vector<long>({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}))) == (std::vector<long>({1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9})));
    assert(candidate((std::vector<long>({0, 6, 6, -76, -21, 23, 4}))) == (std::vector<long>({-76, -21, 0, 4, 23, 6, 6})));
}
