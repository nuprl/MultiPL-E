#include<assert.h>
#include<bits/stdc++.h>
// Given a dictionary, return True if all keys are strings in lower 
// case or all keys are strings in upper case, else return False.
// The function should return False is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return True.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
// check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
bool check_dict_case(std::map<std::string,std::string> dict) {
    if(dict.empty())
        return false;
    for(auto it=dict.begin();it!=dict.end();it++)
    {
        if(it->first.size()==1)
            return false;
        if(it->first[0]>='A' && it->first[0]<='Z')
            return false;
    }
    return true;

}
int main() {
    auto candidate = check_dict_case;
    assert(candidate((std::map<std::string,std::string>({{"p", "pineapple"}, {"b", "banana"}}))) == (true));
    assert(candidate((std::map<std::string,std::string>({{"p", "pineapple"}, {"A", "banana"}, {"B", "banana"}}))) == (false));
    assert(candidate((std::map<std::string,std::string>({{"p", "pineapple"}, {"5", "banana"}, {"a", "apple"}}))) == (false));
    assert(candidate((std::map<std::string,std::string>({{"Name", "John"}, {"Age", "36"}, {"City", "Houston"}}))) == (false));
    assert(candidate((std::map<std::string,std::string>({{"STATE", "NC"}, {"ZIP", "12345"}}))) == (true));
    assert(candidate((std::map<std::string,std::string>({{"fruit", "Orange"}, {"taste", "Sweet"}}))) == (true));
    assert(candidate((std::map<std::string,std::string>())) == (false));
}
