import std.typecons;
import std.math;
/*
 Find the shortest palindrome that begins with a supplied string.
    Algorithm idea is simple:
    - Find the longest postfix of supplied string that is a palindrome.
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome('')
    ''
    >>> make_palindrome('cat')
    'catac'
    >>> make_palindrome('cata')
    'catac'
    
*/
const(char)[] make_palindrome(const(char)[] string) 
{
    const(char)[] result = new(char, string.length() + 1);
    int i = 0;
    int j = string.length() - 1;
    while(i < j)
    {
        if(string[i] == string[j])
        {
            result[i] = string[i];
            result[j] = string[j];
            i++;
            j--;
        }
        else
        {
            break;
        }
    }
    if(i == j)
    {
        result[i] = string[i];
    }
    else
    {
        int k = 0;
        while(string[k] == string[j])
        {
            k++;
        }
        k--;
        int l = 0;
        while(string[l] == string[i])
        {
            l++;
        }
        l--;
        while(k >= 0)
        {
            result[i + l] = string[k];
            result[j - l] = string[k];
            k--;
            l++;
        }
    }
    return result;
}

unittest
{
    alias candidate = make_palindrome;

    assert(candidate("") == "");
    assert(candidate("x") == "x");
    assert(candidate("xyz") == "xyzyx");
    assert(candidate("xyx") == "xyx");
    assert(candidate("jerry") == "jerryrrej");
}
void main(){}