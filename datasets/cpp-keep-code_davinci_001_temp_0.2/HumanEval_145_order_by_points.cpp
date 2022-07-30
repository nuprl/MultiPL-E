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
    assert(candidate((std::vector<long>({(long)1, (long)11, (long)-1, (long)-11, (long)-12}))) == (std::vector<long>({(long)-1, (long)-11, (long)1, (long)-12, (long)11})));
    assert(candidate((std::vector<long>({(long)1234, (long)423, (long)463, (long)145, (long)2, (long)423, (long)423, (long)53, (long)6, (long)37, (long)3457, (long)3, (long)56, (long)0, (long)46}))) == (std::vector<long>({(long)0, (long)2, (long)3, (long)6, (long)53, (long)423, (long)423, (long)423, (long)1234, (long)145, (long)37, (long)46, (long)56, (long)463, (long)3457})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)1, (long)-11, (long)-32, (long)43, (long)54, (long)-98, (long)2, (long)-3}))) == (std::vector<long>({(long)-3, (long)-32, (long)-98, (long)-11, (long)1, (long)2, (long)43, (long)54})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)6, (long)7, (long)8, (long)9, (long)10, (long)11}))) == (std::vector<long>({(long)1, (long)10, (long)2, (long)11, (long)3, (long)4, (long)5, (long)6, (long)7, (long)8, (long)9})));
    assert(candidate((std::vector<long>({(long)0, (long)6, (long)6, (long)-76, (long)-21, (long)23, (long)4}))) == (std::vector<long>({(long)-76, (long)-21, (long)0, (long)4, (long)23, (long)6, (long)6})));
}
