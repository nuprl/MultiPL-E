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
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4}))) == (std::vector<long>({(long)1, (long)4, (long)2, (long)3})));
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)7, (long)8, (long)9}))) == (std::vector<long>({(long)5, (long)9, (long)6, (long)8, (long)7})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5}))) == (std::vector<long>({(long)1, (long)5, (long)2, (long)4, (long)3})));
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)7, (long)8, (long)9, (long)1}))) == (std::vector<long>({(long)1, (long)9, (long)5, (long)8, (long)6, (long)7})));
    assert(candidate((std::vector<long>({(long)5, (long)5, (long)5, (long)5}))) == (std::vector<long>({(long)5, (long)5, (long)5, (long)5})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)6, (long)7, (long)8}))) == (std::vector<long>({(long)1, (long)8, (long)2, (long)7, (long)3, (long)6, (long)4, (long)5})));
    assert(candidate((std::vector<long>({(long)0, (long)2, (long)2, (long)2, (long)5, (long)5, (long)-5, (long)-5}))) == (std::vector<long>({(long)-5, (long)5, (long)-5, (long)5, (long)0, (long)2, (long)2, (long)2})));
    assert(candidate((std::vector<long>({(long)111111}))) == (std::vector<long>({(long)111111})));
}
