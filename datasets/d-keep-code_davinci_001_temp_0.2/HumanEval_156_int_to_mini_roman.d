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
string int_to_mini_roman(long number) 
{
    string roman;
    int i = 0;
    while (number > 0) {
        switch (number % 10) {
            case 1:
            case 2:
            case 3:
                roman = std.math.digits[i] + roman;
                break;
            case 4:
                roman = std.math.digits[i] + std.math.digits[i + 1] + roman;
                break;
            case 5:
                roman = std.math.digits[i + 1] + roman;
                break;
            case 6:
            case 7:
            case 8:
                roman = std.math.digits[i + 1] + std.math.digits[i] * (number % 10 - 5) + roman;
                break;
            case 9:
                roman = std.math.digits[i] + std.math.digits[i + 2] + roman;
                break;
        }
        number /= 10;
        i += 2;
    }
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