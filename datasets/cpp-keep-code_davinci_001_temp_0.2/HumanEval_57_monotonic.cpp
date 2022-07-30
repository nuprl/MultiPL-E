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
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)4, (long)10}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)4, (long)20}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)20, (long)4, (long)10}))) == (false));
    assert(candidate((std::vector<long>({(long)4, (long)1, (long)0, (long)-10}))) == (true));
    assert(candidate((std::vector<long>({(long)4, (long)1, (long)1, (long)0}))) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)2, (long)5, (long)60}))) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)60}))) == (true));
    assert(candidate((std::vector<long>({(long)9, (long)9, (long)9, (long)9}))) == (true));
}
