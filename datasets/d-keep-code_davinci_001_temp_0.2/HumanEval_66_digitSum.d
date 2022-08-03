import std.typecons;
import std.math;
/*
Task
    Write a function that takes a string as input and returns the sum of the upper characters only'
    ASCII codes.

    Examples:
        digitSum("") => 0
        digitSum("abAB") => 131
        digitSum("abcCd") => 67
        digitSum("helloE") => 69
        digitSum("woArBld") => 131
        digitSum("aAaaaXa") => 153
    
*/
long digitSum(string s) 
{
    long sum = 0;
    for (int i = 0; i < s.length(); i++)
    {
        if (s[i] >= 'A' && s[i] <= 'Z')
        {
            sum += s[i];
        }
    }
    return sum;
}

unittest
{
    alias candidate = digitSum;

    assert(candidate("") == 0L);
    assert(candidate("abAB") == 131L);
    assert(candidate("abcCd") == 67L);
    assert(candidate("helloE") == 69L);
    assert(candidate("woArBld") == 131L);
    assert(candidate("aAaaaXa") == 153L);
    assert(candidate(" How are yOu?") == 151L);
    assert(candidate("You arE Very Smart") == 327L);
}
void main(){}