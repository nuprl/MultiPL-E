#include<assert.h>
#include<bits/stdc++.h>
// Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
std::vector<long> unique(std::vector<long> l) {
    std::vector<long> res;
    std::sort(l.begin(), l.end());
    std::unique_copy(l.begin(), l.end(), std::back_inserter(res));
    return res;

}
int main() {
    auto candidate = unique;
    assert(candidate((std::vector<long>({(long)5, (long)3, (long)5, (long)2, (long)3, (long)3, (long)9, (long)0, (long)123}))) == (std::vector<long>({(long)0, (long)2, (long)3, (long)5, (long)9, (long)123})));
}
