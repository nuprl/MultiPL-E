import std.typecons;
import std.math;
/*

    remove_vowels is a function that takes string and returns string without vowels.
    >>> remove_vowels('')
    ''
    >>> remove_vowels('abcdef')
    'bcdf'
    >>> remove_vowels('aaaaa')
    ''
    >>> remove_vowels('aaBAA')
    'B'
    >>> remove_vowels('zbcd')
    'zbcd'
    
*/
string remove_vowels(string text) 
{
    string vowels = "aeiou";
    string result = "";
    for (int i = 0; i < text.length(); i++)
    {
        if (vowels.find(text[i]) == -1)
        {
            result += text[i];
        }
    }
    return result;
}

unittest
{
    alias candidate = remove_vowels;

    assert(candidate("") == "");
    assert(candidate("abcdef
ghijklm") == "bcdf
ghjklm");
    assert(candidate("fedcba") == "fdcb");
    assert(candidate("eeeee") == "");
    assert(candidate("acBAA") == "cB");
    assert(candidate("EcBOO") == "cB");
    assert(candidate("ybcd") == "ybcd");
}
void main(){}