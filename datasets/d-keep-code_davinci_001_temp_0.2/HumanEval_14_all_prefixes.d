import std.math;
import std.typecons;
/*
 Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    
*/
string[] all_prefixes(string string) 
{
    int length = len(string);
    string[] prefixes = new string[length];
    for (int i = 0; i < length; i++)
    {
        prefixes[i] = string[0:i];
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
    int length = len(string);
    string[] suffixes = new string[length];
    for (int i = 0; i < length; i++)
    {
        suffixes[i] = string[i:length];
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
    int length = len(string);
    string[] substrings = new string[length * (length + 1) / 2];
    int index = 0;
    for (int i = 0; i < length; i++)
    {
        for (int j = i; j < length; j++)
        {
            substrings[index] = string[i:j];
            index++;
        }
    }
    return substrings;
}
/*
 Return list of all permutations of the input string
    >>> all_permutations('abc')
    ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']
*/
string[] all_permutations(string string) 
{
    string[] permutations = new string[len(string)];
    permutations[0] = string;
    for (int i = 1; i < len(string); i++)
    {
        string[] new_permutations = new string[len(string)];
        for (int j = 0; j < i; j++)
        {
            new

unittest
{
    alias candidate = all_prefixes;

    assert(candidate("") == []);
    assert(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
    assert(candidate("WWW") == ["W", "WW", "WWW"]);
}
void main(){}