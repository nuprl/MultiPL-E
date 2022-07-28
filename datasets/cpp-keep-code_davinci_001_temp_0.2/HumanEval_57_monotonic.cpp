#include<assert.h>
#include<bits/stdc++.h>
// Return True is list elements are monotonically increasing or decreasing.
// >>> monotonic([1, 2, 4, 20])
// True
// >>> monotonic([1, 20, 4, 10])
// False
// >>> monotonic([4, 1, 0, -10])
// True
bool monotonic(std::vector<long> l) {
    bool flag = true;
    for (int i = 0; i < l.size() - 1; i++) {
        if (l[i] > l[i + 1]) {
            flag = false;
            break;
        }
    }
    return flag;

}
int main() {
    auto candidate = monotonic;
    assert(candidate((std::vector<long>({1, 2, 4, 10}))) == (true));
    assert(candidate((std::vector<long>({1, 2, 4, 20}))) == (true));
    assert(candidate((std::vector<long>({1, 20, 4, 10}))) == (false));
    assert(candidate((std::vector<long>({4, 1, 0, -10}))) == (true));
    assert(candidate((std::vector<long>({4, 1, 1, 0}))) == (true));
    assert(candidate((std::vector<long>({1, 2, 3, 2, 5, 60}))) == (false));
    assert(candidate((std::vector<long>({1, 2, 3, 4, 5, 60}))) == (true));
    assert(candidate((std::vector<long>({9, 9, 9, 9}))) == (true));
}
