#include<assert.h>
#include<bits/stdc++.h>
// sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
long sum_to_n(long n) {
    // TODO: implement me
    return 0;

}
int main() {
    auto candidate = sum_to_n;
    assert(candidate((1)) == (1));
    assert(candidate((6)) == (21));
    assert(candidate((11)) == (66));
    assert(candidate((30)) == (465));
    assert(candidate((100)) == (5050));
}
