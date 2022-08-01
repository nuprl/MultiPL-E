import std.typecons;
import std.math;
/*

    Create a function that returns True if the last character
    of a given string is an alphabetical character and is not
    a part of a word, and False otherwise.
    Note: "word" is a group of characters separated by space.

    Examples:
    check_if_last_char_is_a_letter("apple pie") ➞ False
    check_if_last_char_is_a_letter("apple pi e") ➞ True
    check_if_last_char_is_a_letter("apple pi e ") ➞ False
    check_if_last_char_is_a_letter("") ➞ False 
    
*/
bool check_if_last_char_is_a_letter(string txt) 
{
    return std.math.is_alpha(txt[txt.size() - 1]);
}

unittest
{
    alias candidate = check_if_last_char_is_a_letter;

    assert(candidate("apple") == false);
    assert(candidate("apple pi e") == true);
    assert(candidate("eeeee") == false);
    assert(candidate("A") == true);
    assert(candidate("Pumpkin pie ") == false);
    assert(candidate("Pumpkin pie 1") == false);
    assert(candidate("") == false);
    assert(candidate("eeeee e ") == false);
    assert(candidate("apple pie") == false);
    assert(candidate("apple pi e ") == false);
}
void main(){}