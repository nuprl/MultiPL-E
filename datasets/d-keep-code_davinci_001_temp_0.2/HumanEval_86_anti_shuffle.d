import std.typecons;
import std.math;
/*

    Write a function that takes a string and returns an ordered version of it.
    Ordered version of string, is a string where all words (separated by space)
    are replaced by a new word where all the characters arranged in
    ascending order based on ascii value.
    Note: You should keep the order of words and blank spaces in the sentence.

    For example:
    anti_shuffle('Hi') returns 'Hi'
    anti_shuffle('hello') returns 'ehllo'
    anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    
*/
string anti_shuffle(string s) 
{
    // Write your code here
    string res = "";
    for (int i = 0; i < s.length(); i++)
    {
        if (s[i] == ' ')
        {
            res += s[i];
        }
        else
        {
            res += std.math.min(s[i], std.math.max(s[i], s[i]));
        }
    }
    return res;
}

unittest
{
    alias candidate = anti_shuffle;

    assert(candidate("Hi") == "Hi");
    assert(candidate("hello") == "ehllo");
    assert(candidate("number") == "bemnru");
    assert(candidate("abcd") == "abcd");
    assert(candidate("Hello World!!!") == "Hello !!!Wdlor");
    assert(candidate("") == "");
    assert(candidate("Hi. My name is Mister Robot. How are you?") == ".Hi My aemn is Meirst .Rboot How aer ?ouy");
}
void main(){}