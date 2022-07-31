#include<assert.h>
#include<bits/stdc++.h>
// Return only positive numbers in the list.
// >>> get_positive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
std::vector<long> get_positive(std::vector<long> l) {
    std::vector<long> res;
    for (auto i : l) {
        if (i > 0) {
            res.push_back(i);
        }
    }
    return res;

}
int main() {
    auto candidate = get_positive;
    assert(candidate((std::vector<long>({(long)-1, (long)-2, (long)4, (long)5, (long)6}))) == (std::vector<long>({(long)4, (long)5, (long)6})));
    assert(candidate((std::vector<long>({(long)5, (long)3, (long)-5, (long)2, (long)3, (long)3, (long)9, (long)0, (long)123, (long)1, (long)-10}))) == (std::vector<long>({(long)5, (long)3, (long)2, (long)3, (long)3, (long)9, (long)123, (long)1})));
    assert(candidate((std::vector<long>({(long)-1, (long)-2}))) == (std::vector<long>()));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
}
