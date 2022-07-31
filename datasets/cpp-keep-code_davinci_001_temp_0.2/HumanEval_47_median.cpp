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
    assert(candidate((std::vector<long>({(long)3, (long)1, (long)2, (long)4, (long)5}))) == (float(3)));
    assert(candidate((std::vector<long>({(long)-10, (long)4, (long)6, (long)1000, (long)10, (long)20}))) == (8.0));
    assert(candidate((std::vector<long>({(long)5}))) == (float(5)));
    assert(candidate((std::vector<long>({(long)6, (long)5}))) == (5.5));
    assert(candidate((std::vector<long>({(long)8, (long)1, (long)3, (long)9, (long)9, (long)2, (long)7}))) == (float(7)));
}
