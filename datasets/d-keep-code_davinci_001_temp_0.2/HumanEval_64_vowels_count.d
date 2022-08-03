import std.typecons;
import std.math;
/*
Write a function vowels_count which takes a string representing
    a word as input and returns the number of vowels in the string.
    Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    vowel, but only when it is at the end of the given word.

    Example:
    >>> vowels_count("abcde")
    2
    >>> vowels_count("ACEDY")
    3
    
*/
long vowels_count(string s) 
{
    long count = 0;
    for(int i = 0; i < s.length(); i++)
    {
        if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u')
        {
            count++;
        }
    }
    return count;
}

unittest
{
    alias candidate = vowels_count;

    assert(candidate("abcde") == 2L);
    assert(candidate("Alone") == 3L);
    assert(candidate("key") == 2L);
    assert(candidate("bye") == 1L);
    assert(candidate("keY") == 2L);
    assert(candidate("bYe") == 1L);
    assert(candidate("ACEDY") == 3L);
}
void main(){}