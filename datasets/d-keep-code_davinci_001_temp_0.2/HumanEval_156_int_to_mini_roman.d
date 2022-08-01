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
const(char)[] int_to_mini_roman(long number) 
{
    const(char)[] roman_numerals = ["i", "v", "x", "l", "c", "d", "m"];
    const(char)[] roman_numerals_lower = ["i", "v", "x", "l", "c", "d", "m"];
    const(char)[] roman_numerals_upper = ["I", "V", "X", "L", "C", "D", "M"];
    const(char)[] roman_numerals_lower_subtract = ["iv", "ix", "xl", "xc", "cd", "cm"];
    const(char)[] roman_numerals_upper_subtract = ["IV", "IX", "XL", "XC", "CD", "CM"];
    const(char)[] roman_numerals_subtract = ["iv", "ix", "xl", "xc", "cd", "cm"];
    const(char)[] roman_numerals_subtract_upper = ["IV", "IX", "XL", "XC", "CD", "CM"];
    const(char)[] roman_numerals_subtract_lower = ["iv", "ix", "xl", "xc", "cd", "cm"];
    const(char)[] roman_numerals_subtract_lower_upper = ["IV", "IX", "XL", "XC", "CD", "CM"];
    const(char)[] roman_numerals_subtract_upper_lower = ["iv", "ix", "xl", "xc", "cd", "cm"];
    const(char)[] roman_numerals_subtract_upper_lower_lower = ["iv", "ix", "xl", "xc", "cd", "cm"];
    const(char)[] roman_numerals_subtract_upper_lower_upper = ["IV", "IX", "XL", "XC", "CD", "CM"];
    const(char)[] roman_numerals_subt

unittest
{
    alias candidate = int_to_mini_roman;

    assert(candidate(19) == "xix");
    assert(candidate(152) == "clii");
    assert(candidate(251) == "ccli");
    assert(candidate(426) == "cdxxvi");
    assert(candidate(500) == "d");
    assert(candidate(1) == "i");
    assert(candidate(4) == "iv");
    assert(candidate(43) == "xliii");
    assert(candidate(90) == "xc");
    assert(candidate(94) == "xciv");
    assert(candidate(532) == "dxxxii");
    assert(candidate(900) == "cm");
    assert(candidate(994) == "cmxciv");
    assert(candidate(1000) == "m");
}
void main(){}