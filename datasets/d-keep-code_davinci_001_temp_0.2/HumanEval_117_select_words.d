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
string[] select_words(string s, long n) 
{
    string[] words = s.Split(' ');
    string[] result = new string[words.Length];
    int count = 0;
    for (int i = 0; i < words.Length; i++)
    {
        if (words[i].Length == 0)
        {
            continue;
        }
        int consonants = 0;
        for (int j = 0; j < words[i].Length; j++)
        {
            if (words[i][j] == 'a' || words[i][j] == 'e' || words[i][j] == 'i' || words[i][j] == 'o' || words[i][j] == 'u')
            {
                continue;
            }
            consonants++;
        }
        if (consonants == n)
        {
            result[count] = words[i];
            count++;
        }
    }
    string[] final = new string[count];
    for (int i = 0; i < count; i++)
    {
        final[i] = result[i];
    }
    return final;
}

unittest
{
    alias candidate = select_words;

    assert(candidate("Mary had a little lamb", 4L) == ["little"]);
    assert(candidate("Mary had a little lamb", 3L) == ["Mary", "lamb"]);
    assert(candidate("simple white space", 2L) == []);
    assert(candidate("Hello world", 4L) == ["world"]);
    assert(candidate("Uncle sam", 3L) == ["Uncle"]);
    assert(candidate("", 4L) == []);
    assert(candidate("a b c d e f", 1L) == ["b", "c", "d", "f"]);
}
void main(){}