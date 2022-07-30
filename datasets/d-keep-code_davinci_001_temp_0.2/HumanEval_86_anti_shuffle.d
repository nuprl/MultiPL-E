import std.math;
import std.typecons;
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
const(char)[] anti_shuffle(const(char)[] s) 
    {
        var(char)[] result = new(char)[];
        var(char)[] words = s.split(" ");
        for(var(char)[] word in words)
        {
            for(var(char) c in word)
            {
                result.push(c);
            }
        }
        return result;
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