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
bool is_palindrome(string text) 
{
    if (text.size() <= 1)
        return true;
    else
        return (text[0] == text[text.size() - 1]) && is_palindrome(text.substr(1, text.size() - 2));
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