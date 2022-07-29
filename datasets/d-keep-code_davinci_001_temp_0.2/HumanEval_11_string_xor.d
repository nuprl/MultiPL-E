import std.typecons;
import std.math;
/*
 Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    
*/
const(char)[] string_xor(const(char)[] a, const(char)[] b) 
    {
        assert(a.size() == b.size());
        std.vector.vector[char] result;
        for(int i = 0; i < a.size(); i++)
        {
            if(a[i] == b[i])
            {
                result.push_back('0');
            }
            else
            {
                result.push_back('1');
            }
        }
        return result;
    }

unittest
{
    alias candidate = string_xor;

    assert(candidate("111000", "101010") == "010010");
    assert(candidate("1", "1") == "0");
    assert(candidate("0101", "0000") == "0101");
}
void main(){}