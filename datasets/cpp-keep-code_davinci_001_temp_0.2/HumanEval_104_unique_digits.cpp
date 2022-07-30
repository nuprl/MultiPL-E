#include<assert.h>
#include<bits/stdc++.h>
// Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
std::vector<long> unique_digits(std::vector<long> x) {
    std::vector<long> result;
    for(auto i:x){
        if(i<10){
            if(i%2!=0){
                result.push_back(i);
            }
        }
        else{
            if(i%2!=0){
                long temp=i;
                while(temp>0){
                    if(temp%10%2==0){
                        break;
                    }
                    temp=temp/10;
                }
                if(temp==0){
                    result.push_back(i);
                }
            }
        }
    }
    std::sort(result.begin(),result.end());
    return result;

}
int main() {
    auto candidate = unique_digits;
    assert(candidate((std::vector<long>({(long)15, (long)33, (long)1422, (long)1}))) == (std::vector<long>({(long)1, (long)15, (long)33})));
    assert(candidate((std::vector<long>({(long)152, (long)323, (long)1422, (long)10}))) == (std::vector<long>()));
    assert(candidate((std::vector<long>({(long)12345, (long)2033, (long)111, (long)151}))) == (std::vector<long>({(long)111, (long)151})));
    assert(candidate((std::vector<long>({(long)135, (long)103, (long)31}))) == (std::vector<long>({(long)31, (long)135})));
}
