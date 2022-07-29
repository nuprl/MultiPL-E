import std.typecons;
import std.math;
/*

    Create a function that takes a string as input which contains only square brackets.
    The function should return True if and only if there is a valid subsequence of brackets 
    where at least one bracket in the subsequence is nested.

    is_nested('[[]]') ➞ True
    is_nested('[]]]]]]][[[[[]') ➞ False
    is_nested('[][]') ➞ False
    is_nested('[]') ➞ False
    is_nested('[[][]]') ➞ True
    is_nested('[[]][[') ➞ True
    
*/
bool is_nested(const(char)[] string) 
{
    int i = 0;
    int j = 0;
    while(i < string.length())
    {
        if(string[i] == '[')
        {
            j++;
        }
        else if(string[i] == ']')
        {
            j--;
        }
        if(j < 0)
        {
            return false;
        }
        i++;
    }
    return j == 0;
}

unittest
{
    alias candidate = is_nested;

    assert(candidate("[[]]") == true);
    assert(candidate("[]]]]]]][[[[[]") == false);
    assert(candidate("[][]") == false);
    assert(candidate("[]") == false);
    assert(candidate("[[[[]]]]") == true);
    assert(candidate("[]]]]]]]]]]") == false);
    assert(candidate("[][][[]]") == true);
    assert(candidate("[[]") == false);
    assert(candidate("[]]") == false);
    assert(candidate("[[]][[") == true);
    assert(candidate("[[][]]") == true);
    assert(candidate("") == false);
    assert(candidate("[[[[[[[[") == false);
    assert(candidate("]]]]]]]]") == false);
}
void main(){}