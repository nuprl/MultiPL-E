import std.typecons;
import std.math;
/*
 Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    
*/
const(char)[][] all_prefixes(const(char)[] string) 
{
    const(char)[][] prefixes = new const(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        prefixes.push(string.slice(0, i + 1));
    }
    return prefixes;
}
/*
 Return list of all suffixes from shortest to longest of the input string
    >>> all_suffixes('abc')
    ['c', 'bc', 'abc']
*/
const(char)[][] all_suffixes(const(char)[] string) 
{
    const(char)[][] suffixes = new const(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        suffixes.push(string.slice(i, string.length));
    }
    return suffixes;
}
/*
 Return list of all substrings from shortest to longest of the input string
    >>> all_substrings('abc')
    ['a', 'ab', 'abc', 'b', 'bc', 'c']
*/
const(char)[][] all_substrings(const(char)[] string) 
{
    const(char)[][] substrings = new const(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        for(int j = i; j < string.length; j++)
        {
            substrings.push(string.slice(i, j + 1));
        }
    }
    return substrings;
}
/*
 Return list of all substrings from shortest to longest of the input string
    >>> all_substrings('abc')
    ['a', 'ab', 'abc', 'b', 'bc', 'c']
*/
const(char)[][] all_substrings(const(char)[] string, int length) 
{
    const(char)[][] substrings = new const(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        for(int j = i; j < i + length; j++)
        {
            substrings.push(string.slice

unittest
{
    alias candidate = all_prefixes;

    assert(candidate("") == []);
    assert(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
    assert(candidate("WWW") == ["W", "WW", "WWW"]);
}
void main(){}