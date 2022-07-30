#include<assert.h>
#include<bits/stdc++.h>
// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sum_product([])
// (0, 1)
// >>> sum_product([1, 2, 3, 4])
// (10, 24)
std::tuple<long, long> sum_product(std::vector<long> numbers) {
    long sum = 0;
    long product = 1;
    for (long i : numbers) {
        sum += i;
        product *= i;
    }
    return std::make_tuple(sum, product);

}
int main() {
    auto candidate = sum_product;
    assert(candidate((std::vector<long>())) == (std::make_tuple(0, 1)));
    assert(candidate((std::vector<long>({(long)1, (long)1, (long)1}))) == (std::make_tuple(3, 1)));
    assert(candidate((std::vector<long>({(long)100, (long)0}))) == (std::make_tuple(100, 0)));
    assert(candidate((std::vector<long>({(long)3, (long)5, (long)7}))) == (std::make_tuple(15, 105)));
    assert(candidate((std::vector<long>({(long)10}))) == (std::make_tuple(10, 10)));
}
