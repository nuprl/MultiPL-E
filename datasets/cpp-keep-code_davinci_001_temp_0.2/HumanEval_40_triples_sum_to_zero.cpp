#include<assert.h>
#include<bits/stdc++.h>
// triples_sum_to_zero takes a list of integers as an input.
// it returns True if there are three distinct elements in the list that
// sum to zero, and False otherwise.
// >>> triples_sum_to_zero([1, 3, 5, 0])
// False
// >>> triples_sum_to_zero([1, 3, -2, 1])
// True
// >>> triples_sum_to_zero([1, 2, 3, 7])
// False
// >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
// True
// >>> triples_sum_to_zero([1])
// False
bool triples_sum_to_zero(std::vector<long> l) {
    std::sort(l.begin(), l.end());
    for (int i = 0; i < l.size() - 2; i++) {
        int j = i + 1;
        int k = l.size() - 1;
        while (j < k) {
            if (l[i] + l[j] + l[k] == 0) {
                return true;
            } else if (l[i] + l[j] + l[k] < 0) {
                j++;
            } else {
                k--;
            }
        }
    }
    return false;

}
int main() {
    auto candidate = triples_sum_to_zero;
    assert(candidate((std::vector<long>({1, 3, 5, 0}))) == (false));
    assert(candidate((std::vector<long>({1, 3, 5, -1}))) == (false));
    assert(candidate((std::vector<long>({1, 3, -2, 1}))) == (true));
    assert(candidate((std::vector<long>({1, 2, 3, 7}))) == (false));
    assert(candidate((std::vector<long>({1, 2, 5, 7}))) == (false));
    assert(candidate((std::vector<long>({2, 4, -5, 3, 9, 7}))) == (true));
    assert(candidate((std::vector<long>({1}))) == (false));
    assert(candidate((std::vector<long>({1, 3, 5, -100}))) == (false));
    assert(candidate((std::vector<long>({100, 3, 5, -100}))) == (false));
}
