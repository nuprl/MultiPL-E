import std.math;
import std.typecons;
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    
*/
string string_xor(string a, string b) 
{
    int n = std.math.max(a.size(), b.size());
    string res = "";
    for (int i = 0; i < n; i++) {
        if (i < a.size()) {
            res += a[i];
        }
        if (i < b.size()) {
            res += b[i];
        }
    }
    return res;
}
string string_xor(string a, string b) 
{
    int n = std.math.max(a.size(), b.size());
    string res = "";
    for (int i = 0; i < n; i++) {
        if (i < a.size()) {
            res += a[i];
        }
        if (i < b.size()) {
            res += b[i];
        }
    }
    return res;
}
string string_xor(string a, string b) 
{
    int n = std.math.max(a.size(), b.size());
    string res = "";
    for (int i = 0; i < n; i++) {
        if (i < a.size()) {
            res += a[i];
        }
        if (i < b.size()) {
            res += b[i];
        }
    }
    return res;
}
/*
    Return the number of 1s in the binary representation of n.
    >>> count_bits(10)
    2
*/

unittest
{
    alias candidate = string_xor;

    assert(candidate("111000", "101010") == "010010");
    assert(candidate("1", "1") == "0");
    assert(candidate("0101", "0000") == "0101");
}
void main(){}