#include<assert.h>
#include<bits/stdc++.h>
// Return list with elements incremented by 1.
// >>> incr_list([1, 2, 3])
// [2, 3, 4]
// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
std::vector<long> incr_list(std::vector<long> l) {
    std::vector<long> res;
    for (auto x : l) {
        res.push_back(x + 1);
    }
    return res;

}
int main() {
    auto candidate = incr_list;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)3, (long)2, (long)1}))) == (std::vector<long>({(long)4, (long)3, (long)2})));
    assert(candidate((std::vector<long>({(long)5, (long)2, (long)5, (long)2, (long)3, (long)3, (long)9, (long)0, (long)123}))) == (std::vector<long>({(long)6, (long)3, (long)6, (long)3, (long)4, (long)4, (long)10, (long)1, (long)124})));
}
