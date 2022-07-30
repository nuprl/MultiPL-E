#include<assert.h>
#include<bits/stdc++.h>
// I think we all remember that feeling when the result of some long-awaited
// event is finally known. The feelings and thoughts you have at that moment are
// definitely worth noting down and comparing.
// Your task is to determine if a person correctly guessed the results of a number of matches.
// You are given two arrays of scores and guesses of equal length, where each index shows a match. 
// Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
// the value is 0, and if not, the value is the absolute difference between the guess and the score.
// example:
// compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
// compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
std::vector<long> compare(std::vector<long> game, std::vector<long> guess) {
    std::vector<long> result;
    for(int i = 0; i < game.size(); i++) {
        result.push_back(abs(game[i] - guess[i]));
    }
    return result;

}
int main() {
    auto candidate = compare;
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)5, (long)1})), (std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)2, (long)-2}))) == (std::vector<long>({(long)0, (long)0, (long)0, (long)0, (long)3, (long)3})));
    assert(candidate((std::vector<long>({(long)0, (long)0, (long)0, (long)0, (long)0, (long)0})), (std::vector<long>({(long)0, (long)0, (long)0, (long)0, (long)0, (long)0}))) == (std::vector<long>({(long)0, (long)0, (long)0, (long)0, (long)0, (long)0})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3})), (std::vector<long>({(long)-1, (long)-2, (long)-3}))) == (std::vector<long>({(long)2, (long)4, (long)6})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)5})), (std::vector<long>({(long)-1, (long)2, (long)3, (long)4}))) == (std::vector<long>({(long)2, (long)0, (long)0, (long)1})));
}
