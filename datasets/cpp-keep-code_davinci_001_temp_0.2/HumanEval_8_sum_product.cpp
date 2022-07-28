#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
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
    assert(candidate((std::vector<long>())) == (std::make_tuple(long(0), long(1))));
    assert(candidate((std::vector<long>({1, 1, 1}))) == (std::make_tuple(long(3), long(1))));
    assert(candidate((std::vector<long>({100, 0}))) == (std::make_tuple(long(100), long(0))));
    assert(candidate((std::vector<long>({3, 5, 7}))) == (std::make_tuple(long(15), long(105))));
    assert(candidate((std::vector<long>({10}))) == (std::make_tuple(long(10), long(10))));
}