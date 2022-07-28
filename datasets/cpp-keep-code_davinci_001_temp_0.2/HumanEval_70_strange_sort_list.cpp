#include<assert.h>
#include<bits/stdc++.h>
// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
std::vector<long> strange_sort_list(std::vector<long> lst) {
    std::vector<long> res;
    if (lst.size() == 0) return res;
    std::vector<long>::iterator it = lst.begin();
    res.push_back(*it);
    it++;
    for (; it != lst.end(); it++) {
        if (*it < res.back()) res.push_back(*it);
        else res.insert(res.begin() + res.size() - 1, *it);
    }
    return res;

}
int main() {
    auto candidate = strange_sort_list;
    assert(candidate((std::vector<long>({1, 2, 3, 4}))) == (std::vector<long>({1, 4, 2, 3})));
    assert(candidate((std::vector<long>({5, 6, 7, 8, 9}))) == (std::vector<long>({5, 9, 6, 8, 7})));
    assert(candidate((std::vector<long>({1, 2, 3, 4, 5}))) == (std::vector<long>({1, 5, 2, 4, 3})));
    assert(candidate((std::vector<long>({5, 6, 7, 8, 9, 1}))) == (std::vector<long>({1, 9, 5, 8, 6, 7})));
    assert(candidate((std::vector<long>({5, 5, 5, 5}))) == (std::vector<long>({5, 5, 5, 5})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({1, 2, 3, 4, 5, 6, 7, 8}))) == (std::vector<long>({1, 8, 2, 7, 3, 6, 4, 5})));
    assert(candidate((std::vector<long>({0, 2, 2, 2, 5, 5, -5, -5}))) == (std::vector<long>({-5, 5, -5, 5, 0, 2, 2, 2})));
    assert(candidate((std::vector<long>({111111}))) == (std::vector<long>({111111})));
}
