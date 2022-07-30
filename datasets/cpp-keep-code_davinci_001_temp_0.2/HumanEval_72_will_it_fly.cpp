#include<assert.h>
#include<bits/stdc++.h>
// Write a function that returns True if the object q will fly, and False otherwise.
// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
// Example:
// will_it_fly([1, 2], 5) ➞ False 
// # 1+2 is less than the maximum possible weight, but it's unbalanced.
// will_it_fly([3, 2, 3], 1) ➞ False
// # it's balanced, but 3+2+3 is more than the maximum possible weight.
// will_it_fly([3, 2, 3], 9) ➞ True
// # 3+2+3 is less than the maximum possible weight, and it's balanced.
// will_it_fly([3], 5) ➞ True
// # 3 is less than the maximum possible weight, and it's balanced.
bool will_it_fly(std::vector<long> q, long w) {
    std::string s = std::to_string(q[0]);
    for (int i = 1; i < q.size(); i++) {
        s += std::to_string(q[i]);
    }
    if (std::stoi(s) > w) {
        return false;
    }
    if (std::stoi(s) == w) {
        return true;
    }
    if (std::stoi(s) < w) {
        return true;
    }
    return false;

}
int main() {
    auto candidate = will_it_fly;
    assert(candidate((std::vector<long>({(long)3, (long)2, (long)3})), (9)) == (true));
    assert(candidate((std::vector<long>({(long)1, (long)2})), (5)) == (false));
    assert(candidate((std::vector<long>({(long)3})), (5)) == (true));
    assert(candidate((std::vector<long>({(long)3, (long)2, (long)3})), (1)) == (false));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3})), (6)) == (false));
    assert(candidate((std::vector<long>({(long)5})), (5)) == (true));
}
