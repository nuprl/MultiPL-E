import std.math;
import std.typecons;
/*
Create a function which takes a string representing a file's name, and returns
    'Yes' if the the file's name is valid, and returns 'No' otherwise.
    A file's name is considered to be valid if and only if all the following conditions 
    are met:
    - There should not be more than three digits ('0'-'9') in the file's name.
    - The file's name contains exactly one dot '.'
    - The substring before the dot should not be empty, and it starts with a letter from 
    the latin alphapet ('a'-'z' and 'A'-'Z').
    - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    Examples:
    file_name_check("example.txt") # => 'Yes'
    file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    
*/
string file_name_check(string file_name) 
{
    int dot_index = file_name.find(".");
    if (dot_index == -1)
        return "No";
    string pre_dot = file_name.substr(0, dot_index);
    string post_dot = file_name.substr(dot_index + 1);
    if (pre_dot.length() == 0)
        return "No";
    if (pre_dot.length() > 3)
        return "No";
    if (!std.math.is_digit(pre_dot))
        return "No";
    if (post_dot != "txt" && post_dot != "exe" && post_dot != "dll")
        return "No";
    return "Yes";
}

unittest
{
    alias candidate = file_name_check;

    assert(candidate("example.txt") == "Yes");
    assert(candidate("1example.dll") == "No");
    assert(candidate("s1sdf3.asd") == "No");
    assert(candidate("K.dll") == "Yes");
    assert(candidate("MY16FILE3.exe") == "Yes");
    assert(candidate("His12FILE94.exe") == "No");
    assert(candidate("_Y.txt") == "No");
    assert(candidate("?aREYA.exe") == "No");
    assert(candidate("/this_is_valid.dll") == "No");
    assert(candidate("this_is_valid.wow") == "No");
    assert(candidate("this_is_valid.txt") == "Yes");
    assert(candidate("this_is_valid.txtexe") == "No");
    assert(candidate("#this2_i4s_5valid.ten") == "No");
    assert(candidate("@this1_is6_valid.exe") == "No");
    assert(candidate("this_is_12valid.6exe4.txt") == "No");
    assert(candidate("all.exe.txt") == "No");
    assert(candidate("I563_No.exe") == "Yes");
    assert(candidate("Is3youfault.txt") == "Yes");
    assert(candidate("no_one#knows.dll") == "Yes");
    assert(candidate("1I563_Yes3.exe") == "No");
    assert(candidate("I563_Yes3.txtt") == "No");
    assert(candidate("final..txt") == "No");
    assert(candidate("final132") == "No");
    assert(candidate("_f4indsartal132.") == "No");
    assert(candidate(".txt") == "No");
    assert(candidate("s.") == "No");
}
void main(){}