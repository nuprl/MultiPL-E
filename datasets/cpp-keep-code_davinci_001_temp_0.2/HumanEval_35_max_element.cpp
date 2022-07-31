#include<assert.h>
#include<bits/stdc++.h>
// Return maximum element in the list.
// >>> max_element([1, 2, 3])
// 3
// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
long max_element(std::vector<long> l) {
    long max = l[0];
    for (int i = 1; i < l.size(); i++) {
        if (l[i] > max) {
            max = l[i];
        }
    }
    return max;

}
int main() {
    auto candidate = max_element;
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3}))) == (3));
    assert(candidate((std::vector<long>({(long)5, (long)3, (long)-5, (long)2, (long)-3, (long)3, (long)9, (long)0, (long)124, (long)1, (long)-10}))) == (124));
}
