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
bool is_palindrome(const(char)[] text) 
{
    auto len = strlen(text);
    auto i = 0;
    auto j = len - 1;
    while(i < j)
    {
        if(text[i] != text[j])
        {
            return false;
        }
        i += 1;
        j -= 1;
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