import std.math;
import std.typecons;
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    
*/
const(char)[] string_xor(const(char)[] a, const(char)[] b) 
{
    assert(a.size() == b.size());
    auto c = new(char[a.size()]);
    for(auto i = 0; i < a.size(); i++)
    {
        c[i] = a[i] ^ b[i];
    }
    return c;
}
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary AND on these inputs and return result also as a string.
    >>> string_and('010', '110')
    '010'
*/
const(char)[] string_and(const(char)[] a, const(char)[] b) 
{
    assert(a.size() == b.size());
    auto c = new(char[a.size()]);
    for(auto i = 0; i < a.size(); i++)
    {
        c[i] = a[i] & b[i];
    }
    return c;
}
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary OR on these inputs and return result also as a string.
    >>> string_or('010', '110')
    '110'
*/
const(char)[] string_or(const(char)[] a, const(char)[] b) 
{
    assert(a.size() == b.size());
    auto c = new(char[a.size()]);
    for(auto i = 0; i < a.size(); i++)
    {
        c[i] = a[i] | b[i];
    }
    return c;
}
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary AND-NOT on these inputs and return result also as a string.
    >>> string_andnot('010', '110')
    '000'
*/
const(char)[] string_andnot(const(char)[] a, const(char)[] b) 
{
    assert(a.size() == b.size());
    auto c = new(char[a.size()]);
    for(auto

unittest
{
    alias candidate = string_xor;

    assert(candidate("111000", "101010") == "010010");
    assert(candidate("1", "1") == "0");
    assert(candidate("0101", "0000") == "0101");
}
void main(){}