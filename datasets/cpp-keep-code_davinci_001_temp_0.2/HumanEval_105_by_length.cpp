#include<assert.h>
#include<bits/stdc++.h>
// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
// If the array is empty, return an empty array:
// arr = []
// return []
// If the array has any strange number ignore it:
// arr = [1, -1 , 55] 
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
std::vector<std::string> by_length(std::vector<long> arr) {
    std::vector<long> sorted_arr;
    std::vector<std::string> result;
    for (long i = 0; i < arr.size(); i++) {
        if (arr[i] >= 1 && arr[i] <= 9) {
            sorted_arr.push_back(arr[i]);
        }
    }
    std::sort(sorted_arr.begin(), sorted_arr.end());
    std::reverse(sorted_arr.begin(), sorted_arr.end());
    for (long i = 0; i < sorted_arr.size(); i++) {
        if (sorted_arr[i] == 1) {
            result.push_back("One");
        } else if (sorted_arr[i] == 2) {
            result.push_back("Two");
        } else if (sorted_arr[i] == 3) {
            result.push_back("Three");
        } else if (sorted_arr[i] == 4) {
            result.push_back("Four");
        } else if (sorted_arr[i] == 5) {
            result.push_back("Five");
        } else if (sorted_arr[i] == 6) {
            result.push_back("Six");
        } else if (sorted_arr[i] == 7) {
            result.push_back("Seven");
        } else if (sorted_arr[i] == 8) {
            result.push_back("Eight");
        } else if (sorted_arr[i] == 9) {
            result.push_back("Nine");
        }
    }
    return result;

}
int main() {
    auto candidate = by_length;
    assert(candidate((std::vector<long>({(long)2, (long)1, (long)1, (long)4, (long)5, (long)8, (long)2, (long)3}))) == (std::vector<std::string>({(std::string)"Eight", (std::string)"Five", (std::string)"Four", (std::string)"Three", (std::string)"Two", (std::string)"Two", (std::string)"One", (std::string)"One"})));
    assert(candidate((std::vector<long>())) == (std::vector<std::string>()));
    assert(candidate((std::vector<long>({(long)1, (long)-1, (long)55}))) == (std::vector<std::string>({(std::string)"One"})));
    assert(candidate((std::vector<long>({(long)1, (long)-1, (long)3, (long)2}))) == (std::vector<std::string>({(std::string)"Three", (std::string)"Two", (std::string)"One"})));
    assert(candidate((std::vector<long>({(long)9, (long)4, (long)8}))) == (std::vector<std::string>({(std::string)"Nine", (std::string)"Eight", (std::string)"Four"})));
}
