#include<assert.h>
#include<bits/stdc++.h>
// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
std::vector<long> filter_integers(std::vector<std::any> values) {
    std::vector<long> result;
    for (auto value : values) {
        if (value.type() == typeid(long)) {
            result.push_back(std::any_cast<long>(value));
        }
    }
    return result;

}
int main() {
    auto candidate = filter_integers;
    assert(candidate((std::vector<std::any>())) == (std::vector<long>()));
    assert(candidate((std::vector<std::any>(std::vector<std::any>(std::vector<std::any>(), 23.2, 9, "adasd"}))) == (std::vector<long>({4, 9})));
    assert(candidate((std::vector<std::any>({3, "c", 3, 3, "a", "b"}))) == (std::vector<long>({3, 3, 3})));
}
