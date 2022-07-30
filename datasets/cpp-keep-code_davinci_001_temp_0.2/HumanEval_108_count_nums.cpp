#include<assert.h>
#include<bits/stdc++.h>
// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums([]) == 0
// >>> count_nums([-1, 11, -11]) == 1
// >>> count_nums([1, 1, 2]) == 3
long count_nums(std::vector<long> arr) {
    long count = 0;
    for (long i = 0; i < arr.size(); i++) {
        long sum = 0;
        while (arr[i] > 0) {
            sum += arr[i] % 10;
            arr[i] /= 10;
        }
        if (sum > 0) {
            count++;
        }
    }
    return count;

}
int main() {
    auto candidate = count_nums;
    assert(candidate((std::vector<long>())) == (0));
    assert(candidate((std::vector<long>({(long)-1, (long)-2, (long)0}))) == (0));
    assert(candidate((std::vector<long>({(long)1, (long)1, (long)2, (long)-2, (long)3, (long)4, (long)5}))) == (6));
    assert(candidate((std::vector<long>({(long)1, (long)6, (long)9, (long)-6, (long)0, (long)1, (long)5}))) == (5));
    assert(candidate((std::vector<long>({(long)1, (long)100, (long)98, (long)-7, (long)1, (long)-1}))) == (4));
    assert(candidate((std::vector<long>({(long)12, (long)23, (long)34, (long)-45, (long)-56, (long)0}))) == (5));
    assert(candidate((std::vector<long>({(long)0, (long)1}))) == (1));
    assert(candidate((std::vector<long>({(long)1}))) == (1));
}
