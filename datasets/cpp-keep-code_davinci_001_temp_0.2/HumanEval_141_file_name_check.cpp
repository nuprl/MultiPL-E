#include<assert.h>
#include<bits/stdc++.h>
// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions 
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from 
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
std::string file_name_check(std::string file_name) {
    std::string result = "No";
    int count = 0;
    int dot = 0;
    int i = 0;
    while(file_name[i] != '\0') {
        if(file_name[i] == '.') {
            dot = i;
            break;
        }
        i++;
    }
    if(dot == 0) {
        return result;
    }
    if(file_name[dot+1] == '\0') {
        return result;
    }
    if(file_name[dot+1] == 't' && file_name[dot+2] == 'x' && file_name[dot+3] == 't') {
        result = "Yes";
    }
    else if(file_name[dot+1] == 'e' && file_name[dot+2] == 'x' && file_name[dot+3] == 'e') {
        result = "Yes";
    }
    else if(file_name[dot+1] == 'd' && file_name[dot+2] == 'l' && file_name[dot+3] == 'l') {
        result = "Yes";
    }
    else {
        return result;
    }
    i = 0;
    while(file_name[i] != '.') {
        if(file_name[i] < 'a' || file_name[i] > 'z') {
            if(file_name[i] < 'A' || file_name[i] > 'Z') {
                return result;
            }
        }
        i++;
    }
    i = dot - 1;
    while(file_name[i] != '\0') {
        if(file_name[i] < '0' || file_name[i] > '9') {
            return result;
        }
        count++;
        i--;
    }
    if(count > 3) {
        return result;
    }
    return result;

}
int main() {
    auto candidate = file_name_check;
    assert(candidate(("example.txt")) == ("Yes"));
    assert(candidate(("1example.dll")) == ("No"));
    assert(candidate(("s1sdf3.asd")) == ("No"));
    assert(candidate(("K.dll")) == ("Yes"));
    assert(candidate(("MY16FILE3.exe")) == ("Yes"));
    assert(candidate(("His12FILE94.exe")) == ("No"));
    assert(candidate(("_Y.txt")) == ("No"));
    assert(candidate(("?aREYA.exe")) == ("No"));
    assert(candidate(("/this_is_valid.dll")) == ("No"));
    assert(candidate(("this_is_valid.wow")) == ("No"));
    assert(candidate(("this_is_valid.txt")) == ("Yes"));
    assert(candidate(("this_is_valid.txtexe")) == ("No"));
    assert(candidate(("#this2_i4s_5valid.ten")) == ("No"));
    assert(candidate(("@this1_is6_valid.exe")) == ("No"));
    assert(candidate(("this_is_12valid.6exe4.txt")) == ("No"));
    assert(candidate(("all.exe.txt")) == ("No"));
    assert(candidate(("I563_No.exe")) == ("Yes"));
    assert(candidate(("Is3youfault.txt")) == ("Yes"));
    assert(candidate(("no_one#knows.dll")) == ("Yes"));
    assert(candidate(("1I563_Yes3.exe")) == ("No"));
    assert(candidate(("I563_Yes3.txtt")) == ("No"));
    assert(candidate(("final..txt")) == ("No"));
    assert(candidate(("final132")) == ("No"));
    assert(candidate(("_f4indsartal132.")) == ("No"));
    assert(candidate((".txt")) == ("No"));
    assert(candidate(("s.")) == ("No"));
}
