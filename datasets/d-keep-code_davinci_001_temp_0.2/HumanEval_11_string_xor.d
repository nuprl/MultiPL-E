
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    
*/
const(char)[] string_xor(const(char)[] a, const(char)[] b) 
{
    int len = a.length();
    int i;
    string c;
    for(i=0; i<len; i++)
    {
        if(a[i] == b[i])
        {
            c.append("0");
        }
        else
        {
            c.append("1");
        }
    }
    return c;
}

unittest
{
    alias candidate = string_xor;

    assert(candidate("111000", "101010") == "010010");
    assert(candidate("1", "1") == "0");
    assert(candidate("0101", "0000") == "0101");
}
void main(){}