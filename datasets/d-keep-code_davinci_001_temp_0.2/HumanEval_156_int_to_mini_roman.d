import std.math;
import std.typecons;
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
    if (number < 1 || number > 1000)
        throw new ValueError("number must be between 1 and 1000");
    
    auto roman_numerals = ["i", "v", "x", "l", "c", "d", "m"];
    auto digits = [0, 0, 0, 0, 0, 0, 0];
    auto i = 0;
    while (number > 0) {
        digits[i] = number % 10;
        number /= 10;
        i += 1;
    }
    
    auto result = [];
    for (i = 0; i < digits.length; i += 1) {
        if (digits[i] == 0)
            continue;
        
        if (digits[i] <= 3)
            result.push(roman_numerals[i] * digits[i]);
        else if (digits[i] == 4)
            result.push(roman_numerals[i] + roman_numerals[i + 1]);
        else if (digits[i] == 5)
            result.push(roman_numerals[i + 1]);
        else if (digits[i] <= 8)
            result.push(roman_numerals[i + 1] + roman_numerals[i] * (digits[i] - 5));
        else
            result.push(roman_numerals[i] + roman_numerals[i + 2]);
    }
    
    return result;
}

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