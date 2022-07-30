#include<assert.h>
#include<bits/stdc++.h>
// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse([], 4)
// []
// >>> intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
std::vector<long> intersperse(std::vector<long> numbers, long delimeter) {
    std::vector<long> result;
    for (auto it = numbers.begin(); it != numbers.end(); ++it) {
        result.push_back(*it);
        if (it + 1 != numbers.end()) {
            result.push_back(delimeter);
        }
    }
    return result;

}
int main() {
    auto candidate = intersperse;
    assert(candidate((std::vector<long>()), (7)) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)3, (long)2})), (8)) == (std::vector<long>({(long)5, (long)8, (long)6, (long)8, (long)3, (long)8, (long)2})));
    assert(candidate((std::vector<long>({(long)2, (long)2, (long)2})), (2)) == (std::vector<long>({(long)2, (long)2, (long)2, (long)2, (long)2})));
}
