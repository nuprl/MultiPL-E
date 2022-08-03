import std.typecons;
import std.math;
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