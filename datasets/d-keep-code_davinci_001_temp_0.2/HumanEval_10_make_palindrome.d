import std.math;
import std.typecons;
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
    auto len = str.byte_len(string);
    auto i = len - 1;
    while (i > 0) {
        auto palindrome = str.substr(string, i, len - i);
        if (std.math.is_palindrome(palindrome)) {
            return str.concat(str.reverse(str.substr(string, 0, i)), palindrome);
        }
        i -= 1;
    }
    return str.concat(string, str.reverse(string));
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