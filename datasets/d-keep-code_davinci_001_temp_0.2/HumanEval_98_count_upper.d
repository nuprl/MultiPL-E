import std.math;
import std.typecons;
/*

    Given a string s, count the number of uppercase vowels in even indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 0
    
*/
long count_upper(string s) 
{
    long count = 0;
    for (int i = 0; i < s.length(); i += 2)
    {
        if (s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            count++;
        }
    }
    return count;
}
/*
    Given a string s, count the number of uppercase vowels in odd indices.
    
    For example:
    count_upper('aBCdEf') returns 0
    count_upper('abcdefg') returns 1
    count_upper('dBBE') returns 2
    
*/
long count_upper_odd(string s) 
{
    long count = 0;
    for (int i = 1; i < s.length(); i += 2)
    {
        if (s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            count++;
        }
    }
    return count;
}
/*
    Given a string s, count the number of uppercase vowels in even indices and odd indices.
    
    For example:
    count_upper('aBCdEf') returns (1, 0)
    count_upper('abcdefg') returns (0, 1)
    count_upper('dBBE') returns (0, 2)
    
*/
tuple<long, long> count_upper_both(string s) 
{
    long count_even = 0;
    long count_odd = 0;
    for (int i = 0; i < s.length(); i += 2)
    {
        if (s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
        {
            count_even++;
        }
    }
    for (int i = 1; i < s

unittest
{
    alias candidate = count_upper;

    assert(candidate("aBCdEf") == 1L);
    assert(candidate("abcdefg") == 0L);
    assert(candidate("dBBE") == 0L);
    assert(candidate("B") == 0L);
    assert(candidate("U") == 1L);
    assert(candidate("") == 0L);
    assert(candidate("EEEE") == 2L);
}
void main(){}