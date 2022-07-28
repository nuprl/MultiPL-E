#include<assert.h>
#include<bits/stdc++.h>
// You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return None for empty arr.
// Example:
// >>> prod_signs([1, 2, 2, -4]) == -9
// >>> prod_signs([0, 1]) == 0
// >>> prod_signs([]) == None
std::optional<long> prod_signs(std::vector<long> arr) {
    if(arr.empty())
        return std::nullopt;
    long sum = 0;
    long prod = 1;
    for(long i : arr)
    {
        sum += abs(i);
        prod *= (i>0)?1:-1;
    }
    return sum*prod;

}
int main() {
    auto candidate = prod_signs;
    assert(candidate((std::vector<long>({1, 2, 2, -4}))) == (std::optional<long>(-9)));
    assert(candidate((std::vector<long>({0, 1}))) == (std::optional<long>(0)));
    assert(candidate((std::vector<long>({1, 1, 1, 2, 3, -1, 1}))) == (std::optional<long>(-10)));
    assert(candidate((std::vector<long>())) == (std::optional<long>({})));
    assert(candidate((std::vector<long>({2, 4, 1, 2, -1, -1, 9}))) == (std::optional<long>(20)));
    assert(candidate((std::vector<long>({-1, 1, -1, 1}))) == (std::optional<long>(4)));
    assert(candidate((std::vector<long>({-1, 1, 1, 1}))) == (std::optional<long>(-4)));
    assert(candidate((std::vector<long>({-1, 1, 1, 0}))) == (std::optional<long>(0)));
}
