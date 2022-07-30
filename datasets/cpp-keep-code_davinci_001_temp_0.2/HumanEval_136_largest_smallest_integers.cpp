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
    if (lst.empty()) {
        return {std::nullopt, std::nullopt};
    }
    long max = std::numeric_limits<long>::min();
    long min = std::numeric_limits<long>::max();
    for (auto i : lst) {
        if (i < 0) {
            max = std::max(max, i);
        } else {
            min = std::min(min, i);
        }
    }
    return {max, min};

}
int main() {
    auto candidate = largest_smallest_integers;
    assert(candidate((std::vector<long>({(long)2, (long)4, (long)1, (long)3, (long)5, (long)7}))) == std::make_tuple(std::optional<long>({}), std::optional<long>(1)));
    assert(candidate((std::vector<long>({(long)2, (long)4, (long)1, (long)3, (long)5, (long)7, (long)0}))) == std::make_tuple(std::optional<long>({}), std::optional<long>(1)));
    assert(candidate((std::vector<long>({(long)1, (long)3, (long)2, (long)4, (long)5, (long)6, (long)-2}))) == std::make_tuple(-2, 1));
    assert(candidate((std::vector<long>({(long)4, (long)5, (long)3, (long)6, (long)2, (long)7, (long)-7}))) == std::make_tuple(-7, 2));
    assert(candidate((std::vector<long>({(long)7, (long)3, (long)8, (long)4, (long)9, (long)2, (long)5, (long)-9}))) == std::make_tuple(-9, 2));
    assert(candidate((std::vector<long>())) == std::make_tuple(std::optional<long>({}), std::optional<long>({})));
    assert(candidate((std::vector<long>({(long)0}))) == std::make_tuple(std::optional<long>({}), std::optional<long>({})));
    assert(candidate((std::vector<long>({(long)-1, (long)-3, (long)-5, (long)-6}))) == std::make_tuple(std::optional<long>(-1), std::optional<long>({})));
    assert(candidate((std::vector<long>({(long)-1, (long)-3, (long)-5, (long)-6, (long)0}))) == std::make_tuple(std::optional<long>(-1), std::optional<long>({})));
    assert(candidate((std::vector<long>({(long)-6, (long)-4, (long)-4, (long)-3, (long)1}))) == std::make_tuple(-3, 1));
    assert(candidate((std::vector<long>({(long)-6, (long)-4, (long)-4, (long)-3, (long)-100, (long)1}))) == std::make_tuple(-3, 1));
}
