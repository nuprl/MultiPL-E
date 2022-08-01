import std.typecons;
import std.math;
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    
*/
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        if (a[i] == b[i]) {
            result += '0';
        } else {
            result += '1';
        }
    }
    return result;
}
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        result += std.math.logical_xor(a[i], b[i]);
    }
    return result;
}
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        result += std.math.logical_xor(std.typecons.char_of(a[i]), std.typecons.char_of(b[i]));
    }
    return result;
}
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        result += std.math.logical_xor(std.typecons.char_of(a[i]), std.typecons.char_of(b[i]));
    }
    return result;
}
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        result += std.math.logical_xor(std.typecons.char_of(a[i]), std.typecons.char_of(b[i]));
    }
    return result;
}
string string_xor(string a, string b) 
{
    string result = "";
    for (int i = 0; i < a.length(); i++) {
        result += std.math.logical_xor(std.typecons.char_of(a[i]), std.typecons.char_of(b

unittest
{
    alias candidate = string_xor;

    assert(candidate("111000", "101010") == "010010");
    assert(candidate("1", "1") == "0");
    assert(candidate("0101", "0000") == "0101");
}
void main(){}