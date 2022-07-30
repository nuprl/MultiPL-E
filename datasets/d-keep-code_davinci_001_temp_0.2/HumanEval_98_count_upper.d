import std.math;
import std.typecons;
/*

    Given a string s, count the number of uppercase vowels in even indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 0
    
*/
long count_upper(const(char)[] s) 
{
    long count = 0;
    for(int i = 0; i < s.length; i++)
    {
        if(s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            if(i % 2 == 0)
            {
                count++;
            }
        }
    }
    return count;
}
/*
    Given a string s, count the number of uppercase vowels in odd indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 1
    
*/
long count_upper_odd(const(char)[] s) 
{
    long count = 0;
    for(int i = 0; i < s.length; i++)
    {
        if(s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            if(i % 2 != 0)
            {
                count++;
            }
        }
    }
    return count;
}
/*
    Given a string s, count the number of vowels in even indices.
    
    For example:
    count_vowels('aBCdEf') returns 3
    count_vowels('abcdefg') returns 3
    count_vowels('dBBE') returns 2
    
*/
long count_vowels(const(char)[] s) 
{
    long count = 0;
    for(int i = 0; i < s.length; i++)
    {
        if(s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            count++;
        }
    }
    return count;
}
/*

unittest
{
    alias candidate = count_upper;

    assert(candidate("aBCdEf") == 1);
    assert(candidate("abcdefg") == 0);
    assert(candidate("dBBE") == 0);
    assert(candidate("B") == 0);
    assert(candidate("U") == 1);
    assert(candidate("") == 0);
    assert(candidate("EEEE") == 2);
}
void main(){}