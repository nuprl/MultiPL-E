import std.math;
import std.typecons;
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
bool is_nested(string string) 
{
    int count = 0;
    for (int i = 0; i < string.length(); i++)
    {
        if (string[i] == '[')
        {
            count++;
        }
        else if (string[i] == ']')
        {
            count--;
        }
        if (count < 0)
        {
            return false;
        }
    }
    return count == 0;
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