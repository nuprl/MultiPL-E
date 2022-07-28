
/*

    Given a string s, count the number of uppercase vowels in even indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 0
    
*/
int count_upper(const(char)[] s) 
{
    int count = 0;
    for (int i = 0; i < strlen(s); i++) {
        if (s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U') {
            if (i % 2 == 0) {
                count++;
            }
        }
    }
    return count;
}

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