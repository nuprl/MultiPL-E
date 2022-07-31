import std.math;
import std.typecons;
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
const(char)[][] select_words(const(char)[] s, long n) 
{
    if(s.length == 0)
        return new const(char)[][]{};
    const(char)[][] result = new const(char)[][]{};
    for(long i = 0; i < s.length; i++)
    {
        long count = 0;
        for(long j = i; j < s.length; j++)
        {
            if(s[j] == ' ')
                break;
            if(s[j] != 'a' && s[j] != 'e' && s[j] != 'i' && s[j] != 'o' && s[j] != 'u')
                count++;
            if(count == n)
            {
                const(char)[] temp = new const(char)[s.length - j];
                for(long k = 0; k < temp.length; k++)
                    temp[k] = s[j + k];
                result.add(temp);
                break;
            }
        }
    }
    return result;
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