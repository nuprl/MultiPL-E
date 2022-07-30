import std.math;
import std.typecons;
/*
 Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    
*/
const(char)[][] all_prefixes(const(char)[] string) 
{
    var(char)[][] prefixes = new(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        prefixes.push(string[0:i]);
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
    var(char)[][] suffixes = new(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        suffixes.push(string[i:string.length]);
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
    var(char)[][] substrings = new(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        for(int j = i; j < string.length; j++)
        {
            substrings.push(string[i:j]);
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
    var(char)[][] substrings = new(char)[][];
    for(int i = 0; i < string.length; i++)
    {
        for(int j = i; j < string.length; j++)
        {
            if(j - i + 1 == length)
            {
                substrings.push(string[

unittest
{
    alias candidate = all_prefixes;

    assert(candidate("") == []);
    assert(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
    assert(candidate("WWW") == ["W", "WW", "WWW"]);
}
void main(){}