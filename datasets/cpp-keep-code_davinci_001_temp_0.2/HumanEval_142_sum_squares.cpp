#include<assert.h>
#include<bits/stdc++.h>
// "
// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
long sum_squares(std::vector<long> lst) {
    long sum = 0;
    for (int i = 0; i < lst.size(); i++) {
        if (i % 3 == 0) {
            sum += lst[i] * lst[i];
        } else if (i % 4 == 0 && i % 3 != 0) {
            sum += lst[i] * lst[i] * lst[i];
        }
    }
    return sum;

}
int main() {
    auto candidate = sum_squares;
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3}))) == (6));
    assert(candidate((std::vector<long>({(long)1, (long)4, (long)9}))) == (14));
    assert(candidate((std::vector<long>())) == (0));
    assert(candidate((std::vector<long>({(long)1, (long)1, (long)1, (long)1, (long)1, (long)1, (long)1, (long)1, (long)1}))) == (9));
    assert(candidate((std::vector<long>({(long)-1, (long)-1, (long)-1, (long)-1, (long)-1, (long)-1, (long)-1, (long)-1, (long)-1}))) == (-3));
    assert(candidate((std::vector<long>({(long)0}))) == (0));
    assert(candidate((std::vector<long>({(long)-1, (long)-5, (long)2, (long)-1, (long)-5}))) == (-126));
    assert(candidate((std::vector<long>({(long)-56, (long)-99, (long)1, (long)0, (long)-2}))) == (3030));
    assert(candidate((std::vector<long>({(long)-1, (long)0, (long)0, (long)0, (long)0, (long)0, (long)0, (long)0, (long)-1}))) == (0));
    assert(candidate((std::vector<long>({(long)-16, (long)-9, (long)-2, (long)36, (long)36, (long)26, (long)-20, (long)25, (long)-40, (long)20, (long)-4, (long)12, (long)-26, (long)35, (long)37}))) == (-14196));
    assert(candidate((std::vector<long>({(long)-1, (long)-3, (long)17, (long)-1, (long)-15, (long)13, (long)-1, (long)14, (long)-14, (long)-12, (long)-5, (long)14, (long)-14, (long)6, (long)13, (long)11, (long)16, (long)16, (long)4, (long)10}))) == (-1448));
}
