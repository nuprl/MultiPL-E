#include<assert.h>
#include<bits/stdc++.h>
// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
std::string sort_numbers(std::string numbers) {
    std::vector<int> v;
    std::string s;
    for(auto c:numbers){
        if(c==' '){
            v.push_back(atoi(s.c_str()));
            s="";
        }
        else{
            s+=c;
        }
    }
    v.push_back(atoi(s.c_str()));
    std::sort(v.begin(),v.end());
    std::string ret="";
    for(auto i:v){
        ret+=std::to_string(i);
        ret+=" ";
    }
    return ret;

}
int main() {
    auto candidate = sort_numbers;
    assert(candidate(("")) == (""));
    assert(candidate(("three")) == ("three"));
    assert(candidate(("three five nine")) == ("three five nine"));
    assert(candidate(("five zero four seven nine eight")) == ("zero four five seven eight nine"));
    assert(candidate(("six five four three two one zero")) == ("zero one two three four five six"));
}
