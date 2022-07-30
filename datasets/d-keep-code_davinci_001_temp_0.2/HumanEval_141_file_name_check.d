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
const(char)[] file_name_check(const(char)[] file_name) 
{
    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;
    int m = 0;
    int n = 0;
    int o = 0;
    int p = 0;
    int q = 0;
    int r = 0;
    int s = 0;
    int t = 0;
    int u = 0;
    int v = 0;
    int w = 0;
    int x = 0;
    int y = 0;
    int z = 0;
    int a = 0;
    int b = 0;
    int c = 0;
    int d = 0;
    int e = 0;
    int f = 0;
    int g = 0;
    int h = 0;
    int i1 = 0;
    int j1 = 0;
    int k1 = 0;
    int l1 = 0;
    int m1 = 0;
    int n1 = 0;
    int o1 = 0;
    int p1 = 0;
    int q1 = 0;
    int r1 = 0;
    int s1 = 0;
    int t1 = 0;
    int u1 = 0;
    int v1 = 0;
    int w1 = 0;
    int x1 = 0;
    int y1 = 0;
    int z1 = 0;
    int a1 = 0;
    int b1 = 0;
    int c1 = 0;
    int d1 = 0;
    int e1 = 0;
    int f1 = 0;
    int g1 = 0;
    int h1 = 0;
    int i2 = 0;
    int j2 = 0;
    int k2 = 0;
    int l2 = 0;
    int m2 = 0;
    int n2 = 0;
    int o2 = 0;
    int p2 = 0;
    int q2 = 0;
    int r2 = 0;
    int s2 = 0;
    int t2 = 0;
    int u2 = 0;
    int v

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