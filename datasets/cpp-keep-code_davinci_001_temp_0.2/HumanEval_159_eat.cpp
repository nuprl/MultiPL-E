#include<assert.h>
#include<bits/stdc++.h>
// You're a hungry rabbit, and you already have eaten a certain number of carrots,
// but now you need to eat more carrots to complete the day's meals.
// you should return an array of [ total number of eaten carrots after your meals,
// the number of carrots left after your meals ]
// if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
// Example:
// * eat(5, 6, 10) -> [11, 4]
// * eat(4, 8, 9) -> [12, 1]
// * eat(1, 10, 10) -> [11, 0]
// * eat(2, 11, 5) -> [7, 0]
// Variables:
// @number : integer
// the number of carrots that you have eaten.
// @need : integer
// the number of carrots that you need to eat.
// @remaining : integer
// the number of remaining carrots thet exist in stock
// Constrain:
// * 0 <= number <= 1000
// * 0 <= need <= 1000
// * 0 <= remaining <= 1000
// Have fun :)
std::vector<long> eat(long number, long need, long remaining) {
    std::vector<long> result;
    if (number >= need) {
        result.push_back(number - need + remaining);
        result.push_back(0);
    } else {
        result.push_back(0);
        result.push_back(remaining - need + number);
    }
    return result;

}
int main() {
    auto candidate = eat;
    assert(candidate((5), (6), (10)) == (std::vector<long>({(long)11, (long)4})));
    assert(candidate((4), (8), (9)) == (std::vector<long>({(long)12, (long)1})));
    assert(candidate((1), (10), (10)) == (std::vector<long>({(long)11, (long)0})));
    assert(candidate((2), (11), (5)) == (std::vector<long>({(long)7, (long)0})));
    assert(candidate((4), (5), (7)) == (std::vector<long>({(long)9, (long)2})));
    assert(candidate((4), (5), (1)) == (std::vector<long>({(long)5, (long)0})));
}
