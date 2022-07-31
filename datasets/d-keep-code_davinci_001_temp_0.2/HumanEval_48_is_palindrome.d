import std.math;
import std.typecons;
/*

    Checks if given string is a palindrome
    >>> is_palindrome('')
    True
    >>> is_palindrome('aba')
    True
    >>> is_palindrome('aaaaa')
    True
    >>> is_palindrome('zbcd')
    False
    
*/
bool is_palindrome(const(char)[] text) 
{
    auto len = str.length(text);
    auto i = 0u;
    auto j = len - 1u;
    while (i < j) {
        if (text[i] != text[j]) {
            return false;
        }
        i = i + 1u;
        j = j - 1u;
    }
    return true;
}

unittest
{
    alias candidate = is_palindrome;

    assert(candidate("") == true);
    assert(candidate("aba") == true);
    assert(candidate("aaaaa") == true);
    assert(candidate("zbcd") == false);
    assert(candidate("xywyx") == true);
    assert(candidate("xywyz") == false);
    assert(candidate("xywzx") == false);
}
void main(){}