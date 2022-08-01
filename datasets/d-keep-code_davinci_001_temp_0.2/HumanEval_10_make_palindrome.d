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
string make_palindrome(string string) 
{
    string palindrome = string;
    int i = 0;
    while(i < string.length())
    {
        string postfix = string.substr(i);
        if(is_palindrome(postfix))
        {
            palindrome += reverse(string.substr(0, i));
            break;
        }
        i++;
    }
    return palindrome;
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