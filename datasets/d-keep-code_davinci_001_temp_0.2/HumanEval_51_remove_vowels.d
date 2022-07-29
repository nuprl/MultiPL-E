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
const(char)[] remove_vowels(const(char)[] text) 
{
    return filter(text, (char c) -> !(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'));
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