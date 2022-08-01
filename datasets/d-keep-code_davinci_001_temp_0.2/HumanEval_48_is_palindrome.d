import std.typecons;
import std.math;
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
    int len = text.length();
    for(int i = 0; i < len / 2; i++)
    {
        if(text[i] != text[len - i - 1])
            return false;
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