#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
std::vector<long> filter_integers(std::vector<> values) {
    std::vector<long> result;
    for (auto value : values) {
        if (value.is_integer()) {
            result.push_back(value.as_integer());
        }
    }
    return result;
}


int main() {
    auto candidate = filter_integers;
    assert(candidate((std::vector<>())) == (std::vector<long>()));
    assert(candidate((std::vector<>(std::vector<>(std::vector<>(), 23.2, 9, "adasd"}))) == (std::vector<long>({4, 9})));
    assert(candidate((std::vector<>({3, "c", 3, 3, "a", "b"}))) == (std::vector<long>({3, 3, 3})));
}