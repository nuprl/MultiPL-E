
/*

    Given a positive integer, obtain its roman numeral equivalent as a string,
    and return it in lowercase.
    Restrictions: 1 <= num <= 1000

    Examples:
    >>> int_to_mini_roman(19) == 'xix'
    >>> int_to_mini_roman(152) == 'clii'
    >>> int_to_mini_roman(426) == 'cdxxvi'
    
*/
const(char)[] int_to_mini_roman(int number) 
{
    string roman = "";
    int[] roman_numerals = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    string[] roman_letters = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
    for(int i = 0; i < roman_numerals.length; i++) {
        while(number >= roman_numerals[i]) {
            roman += roman_letters[i];
            number -= roman_numerals[i];
        }
    }
    return roman;
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