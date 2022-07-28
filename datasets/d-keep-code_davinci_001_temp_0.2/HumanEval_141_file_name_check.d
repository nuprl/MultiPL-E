
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
const(char)[] file_name_check(const(char)[] file_name) 
{
    int i, j, k, l, m, n;
    int count = 0;
    int dot_count = 0;
    int dot_index = 0;
    int dot_index_1 = 0;
    int dot_index_2 = 0;
    int dot_index_3 = 0;
    int dot_index_4 = 0;
    int dot_index_5 = 0;
    int dot_index_6 = 0;
    int dot_index_7 = 0;
    int dot_index_8 = 0;
    int dot_index_9 = 0;
    int dot_index_10 = 0;
    int dot_index_11 = 0;
    int dot_index_12 = 0;
    int dot_index_13 = 0;
    int dot_index_14 = 0;
    int dot_index_15 = 0;
    int dot_index_16 = 0;
    int dot_index_17 = 0;
    int dot_index_18 = 0;
    int dot_index_19 = 0;
    int dot_index_20 = 0;
    int dot_index_21 = 0;
    int dot_index_22 = 0;
    int dot_index_23 = 0;
    int dot_index_24 = 0;
    int dot_index_25 = 0;
    int dot_index_26 = 0;
    int dot_index_27 = 0;
    int dot_index_28 = 0;
    int dot_index_29 = 0;
    int dot_index_30 = 0;
    int dot_index_31 = 0;
    int dot_index_32 = 0;
    int dot_index_33 = 0;
    int dot_index_34 = 0;
    int dot_index_35 = 0;
    int dot_index_36 = 0;
    int dot_index_37 = 0;
    int dot_index_38 = 0;
    int dot_index_39 = 0;
    int dot_index_40 = 0;
    int dot_index_41 = 0;
    int dot_index_

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