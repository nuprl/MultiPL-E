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
    assert(candidate((std::vector<long>({15, 33, 1422, 1}))) == (std::vector<long>({1, 15, 33})));
    assert(candidate((std::vector<long>({152, 323, 1422, 10}))) == (std::vector<long>()));
    assert(candidate((std::vector<long>({12345, 2033, 111, 151}))) == (std::vector<long>({111, 151})));
    assert(candidate((std::vector<long>({135, 103, 31}))) == (std::vector<long>({31, 135})));
}
