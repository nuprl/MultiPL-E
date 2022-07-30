#include<assert.h>
#include<bits/stdc++.h>
// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return False. Assume no negative numbers and only integers.
// Examples
// is_sorted([5]) ➞ True
// is_sorted([1, 2, 3, 4, 5]) ➞ True
// is_sorted([1, 3, 2, 4, 5]) ➞ False
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
bool is_sorted(std::vector<long> lst) {
    for (int i = 0; i < lst.size() - 1; i++) {
        if (lst[i] > lst[i + 1]) {
            return false;
        }
    }
    return true;

}
int main() {
    auto candidate = is_sorted;
    assert(candidate((std::vector<long>({(long)5}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)3, (long)2, (long)4, (long)5}))) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)6}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)6, (long)7}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)3, (long)2, (long)4, (long)5, (long)6, (long)7}))) == (false));
    assert(candidate((std::vector<long>())) == (true));
    assert(candidate((std::vector<long>({(long)1}))) == (true));
    assert(candidate((std::vector<long>({(long)3, (long)2, (long)1}))) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)2, (long)2, (long)3, (long)4}))) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)3, (long)3, (long)4}))) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)2, (long)3, (long)3, (long)4}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4}))) == (true));
}
