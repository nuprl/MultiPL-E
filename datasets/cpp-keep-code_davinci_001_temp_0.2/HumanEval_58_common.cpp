#include<assert.h>
#include<bits/stdc++.h>
// Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
std::vector<long> common(std::vector<long> l1, std::vector<long> l2) {
    std::sort(l1.begin(), l1.end());
    std::sort(l2.begin(), l2.end());
    std::vector<long> res;
    std::vector<long>::iterator it1 = l1.begin();
    std::vector<long>::iterator it2 = l2.begin();
    while (it1 != l1.end() && it2 != l2.end()) {
        if (*it1 == *it2) {
            res.push_back(*it1);
            ++it1;
            ++it2;
        } else if (*it1 < *it2) {
            ++it1;
        } else {
            ++it2;
        }
    }
    return res;

}
int main() {
    auto candidate = common;
    assert(candidate((std::vector<long>({(long)1, (long)4, (long)3, (long)34, (long)653, (long)2, (long)5})), (std::vector<long>({(long)5, (long)7, (long)1, (long)5, (long)9, (long)653, (long)121}))) == (std::vector<long>({(long)1, (long)5, (long)653})));
    assert(candidate((std::vector<long>({(long)5, (long)3, (long)2, (long)8})), (std::vector<long>({(long)3, (long)2}))) == (std::vector<long>({(long)2, (long)3})));
    assert(candidate((std::vector<long>({(long)4, (long)3, (long)2, (long)8})), (std::vector<long>({(long)3, (long)2, (long)4}))) == (std::vector<long>({(long)2, (long)3, (long)4})));
    assert(candidate((std::vector<long>({(long)4, (long)3, (long)2, (long)8})), (std::vector<long>())) == (std::vector<long>()));
}
