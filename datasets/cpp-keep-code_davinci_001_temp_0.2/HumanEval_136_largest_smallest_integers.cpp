#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as None.
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
// largest_smallest_integers([]) == (None, None)
// largest_smallest_integers([0]) == (None, None)
std::tuple<std::optional<long>, std::optional<long>> largest_smallest_integers(std::vector<long> lst) {
    if (lst.size() == 0) {
        return std::make_tuple(std::optional<long>(), std::optional<long>());
    }
    std::vector<long> negative_integers;
    std::vector<long> positive_integers;
    for (auto &i : lst) {
        if (i < 0) {
            negative_integers.push_back(i);
        } else {
            positive_integers.push_back(i);
        }
    }
    if (negative_integers.size() == 0) {
        return std::make_tuple(std::optional<long>(), std::optional<long>(positive_integers[0]));
    }
    if (positive_integers.size() == 0) {
        return std::make_tuple(std::optional<long>(negative_integers[0]), std::optional<long>());
    }
    std::sort(negative_integers.begin(), negative_integers.end());
    std::sort(positive_integers.begin(), positive_integers.end());
    return std::make_tuple(std::optional<long>(negative_integers[negative_integers.size() - 1]), std::optional<long>(positive_integers[0]));
}


int main() {
    auto candidate = largest_smallest_integers;
    assert(candidate((std::vector<long>({2, 4, 1, 3, 5, 7}))) == std::make_tuple(std::optional<long>({}), std::optional<long>(1)));
    assert(candidate((std::vector<long>({2, 4, 1, 3, 5, 7, 0}))) == std::make_tuple(std::optional<long>({}), std::optional<long>(1)));
    assert(candidate((std::vector<long>({1, 3, 2, 4, 5, 6, -2}))) == std::make_tuple(std::optional<long>(-2), std::optional<long>(1)));
    assert(candidate((std::vector<long>({4, 5, 3, 6, 2, 7, -7}))) == std::make_tuple(std::optional<long>(-7), std::optional<long>(2)));
    assert(candidate((std::vector<long>({7, 3, 8, 4, 9, 2, 5, -9}))) == std::make_tuple(std::optional<long>(-9), std::optional<long>(2)));
    assert(candidate((std::vector<long>())) == std::make_tuple(std::optional<long>({}), std::optional<long>({})));
    assert(candidate((std::vector<long>({0}))) == std::make_tuple(std::optional<long>({}), std::optional<long>({})));
    assert(candidate((std::vector<long>({-1, -3, -5, -6}))) == std::make_tuple(std::optional<long>(-1), std::optional<long>({})));
    assert(candidate((std::vector<long>({-1, -3, -5, -6, 0}))) == std::make_tuple(std::optional<long>(-1), std::optional<long>({})));
    assert(candidate((std::vector<long>({-6, -4, -4, -3, 1}))) == std::make_tuple(std::optional<long>(-3), std::optional<long>(1)));
    assert(candidate((std::vector<long>({-6, -4, -4, -3, -100, 1}))) == std::make_tuple(std::optional<long>(-3), std::optional<long>(1)));
}