import std.typecons;
import std.math;
/*
 Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    
*/
string[] all_prefixes(string string) 
{
    string[] prefixes = {""};
    for (int i = 0; i < string.length; i++)
    {
        prefixes = append(prefixes, prefixes.map(x -> x + string[i]));
    }
    return prefixes;
}
/*
 Return list of all suffixes from shortest to longest of the input string
    >>> all_suffixes('abc')
    ['c', 'bc', 'abc']
*/
string[] all_suffixes(string string) 
{
    string[] suffixes = {""};
    for (int i = 1; i <= string.length; i++)
    {
        suffixes = append(suffixes, suffixes.map(x -> string[string.length - i] + x));
    }
    return suffixes;
}
/*
 Return list of all substrings from shortest to longest of the input string
    >>> all_substrings('abc')
    ['a', 'ab', 'abc', 'b', 'bc', 'c']
*/
string[] all_substrings(string string) 
{
    string[] substrings = {""};
    for (int i = 0; i < string.length; i++)
    {
        for (int j = i; j < string.length; j++)
        {
            substrings = append(substrings, string[i..j]);
        }
    }
    return substrings;
}
/*
 Return list of all substrings from shortest to longest of the input string
    >>> all_substrings('abc')
    ['a', 'ab', 'abc', 'b', 'bc', 'c']
*/
string[] all_substrings(string string, int length) 
{
    string[] substrings = {""};
    for (int i = 0; i < string.length; i++)
    {
        for (int j = i; j < string.length; j++)
        {
            if (j - i + 1 == length)
            {
                substrings = append(substrings, string[i..j]);
            }
        }
    }
    return substrings;
}

unittest
{
    alias candidate = all_prefixes;

    assert(candidate("") == []);
    assert(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
    assert(candidate("WWW") == ["W", "WW", "WWW"]);
}
void main(){}