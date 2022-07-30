#include<assert.h>
#include<bits/stdc++.h>
// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
std::vector<long> remove_duplicates(std::vector<long> numbers) {
    std::vector<long> result;
    std::unordered_set<long> set;
    for (long number : numbers) {
        if (set.find(number) == set.end()) {
            set.insert(number);
            result.push_back(number);
        }
    }
    return result;

}
int main() {
    auto candidate = remove_duplicates;
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4}))) == (std::vector<long>({(long)1, (long)2, (long)3, (long)4})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)2, (long)4, (long)3, (long)5}))) == (std::vector<long>({(long)1, (long)4, (long)5})));
}
