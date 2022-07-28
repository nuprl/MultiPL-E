#include<assert.h>
#include<bits/stdc++.h>
// Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
float median(std::vector<long> l) {
    assert(l.size() > 0);
    std::sort(l.begin(), l.end());
    int n = l.size();
    if (n % 2 == 0) {
        return (l[n / 2] + l[n / 2 - 1]) / 2.0;
    } else {
        return l[n / 2];
    }

}
int main() {
    auto candidate = median;
    assert(candidate((std::vector<long>({3, 1, 2, 4, 5}))) == (float(3)));
    assert(candidate((std::vector<long>({-10, 4, 6, 1000, 10, 20}))) == (8.0));
    assert(candidate((std::vector<long>({5}))) == (float(5)));
    assert(candidate((std::vector<long>({6, 5}))) == (5.5));
    assert(candidate((std::vector<long>({8, 1, 3, 9, 9, 2, 7}))) == (float(7)));
}
