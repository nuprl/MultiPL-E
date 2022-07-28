import std.typecons;
import std.math;
/*
Given a string s and a natural number n, you have been tasked to implement 
    a function that returns a list of all words from string s that contain exactly 
    n consonants, in order these words appear in the string s.
    If the string s is empty then the function should return an empty list.
    Note: you may assume the input string contains only letters and spaces.
    Examples:
    select_words("Mary had a little lamb", 4) ==> ["little"]
    select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    select_words("simple white space", 2) ==> []
    select_words("Hello world", 4) ==> ["world"]
    select_words("Uncle sam", 3) ==> ["Uncle"]
    
*/
const(char)[][] select_words(const(char)[] s, int n) 
{
    if(s.length == 0)
        return [];
    else
    {
        int count = 0;
        int index = 0;
        const(char)[][] result = [];
        for(int i = 0; i < s.length; i++)
        {
            if(s[i] == ' ')
            {
                if(count == n)
                {
                    result.push(s.slice(index, i));
                    index = i + 1;
                    count = 0;
                }
                else
                {
                    index = i + 1;
                    count = 0;
                }
            }
            else if(s[i] != ' ')
            {
                if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u')
                    count = 0;
                else
                    count++;
            }
        }
        if(count == n)
            result.push(s.slice(index, s.length));
        return result;
    }
}

unittest
{
    alias candidate = select_words;

    assert(candidate("Mary had a little lamb", 4) == ["little"]);
    assert(candidate("Mary had a little lamb", 3) == ["Mary", "lamb"]);
    assert(candidate("simple white space", 2) == []);
    assert(candidate("Hello world", 4) == ["world"]);
    assert(candidate("Uncle sam", 3) == ["Uncle"]);
    assert(candidate("", 4) == []);
    assert(candidate("a b c d e f", 1) == ["b", "c", "d", "f"]);
}
void main(){}