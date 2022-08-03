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
string make_palindrome(string string) 
{
    string palindrome = string;
    string prefix = "";
    string postfix = "";
    int i = 0;
    int j = 0;
    int n = string.length();
    while (i < n) {
        if (string[i] == string[n - 1 - i]) {
            i++;
        } else {
            break;
        }
    }
    if (i == n) {
        return string;
    }
    i = 0;
    while (i < n) {
        if (string[i] == string[n - 1 - i]) {
            postfix = string[i] + postfix;
            i++;
        } else {
            break;
        }
    }
    prefix = string.substr(0, n - i);
    palindrome = prefix + postfix + string;
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