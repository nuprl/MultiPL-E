import std.typecons;
import std.math;
/*

    Given a positive integer, obtain its roman numeral equivalent as a string,
    and return it in lowercase.
    Restrictions: 1 <= num <= 1000

    Examples:
    >>> int_to_mini_roman(19) == 'xix'
    >>> int_to_mini_roman(152) == 'clii'
    >>> int_to_mini_roman(426) == 'cdxxvi'
    
*/
string int_to_mini_roman(long number) 
{
    string roman;
    int thousands = number / 1000;
    number %= 1000;
    int hundreds = number / 100;
    number %= 100;
    int tens = number / 10;
    number %= 10;
    int ones = number;
    roman += std.math.int_to_roman(thousands) + "m";
    roman += std.math.int_to_roman(hundreds) + "c";
    roman += std.math.int_to_roman(tens) + "x";
    roman += std.math.int_to_roman(ones) + "i";
    return roman;
}

unittest
{
    alias candidate = int_to_mini_roman;

    assert(candidate(19L) == "xix");
    assert(candidate(152L) == "clii");
    assert(candidate(251L) == "ccli");
    assert(candidate(426L) == "cdxxvi");
    assert(candidate(500L) == "d");
    assert(candidate(1L) == "i");
    assert(candidate(4L) == "iv");
    assert(candidate(43L) == "xliii");
    assert(candidate(90L) == "xc");
    assert(candidate(94L) == "xciv");
    assert(candidate(532L) == "dxxxii");
    assert(candidate(900L) == "cm");
    assert(candidate(994L) == "cmxciv");
    assert(candidate(1000L) == "m");
}
void main(){}