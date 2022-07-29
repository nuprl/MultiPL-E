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
const(char)[] int_to_mini_roman(int number) 
{
    if(number < 1 || number > 1000)
        return null;
    else if(number < 4)
        return "i" * number;
    else if(number < 5)
        return "v" + "i" * (number - 5);
    else if(number < 9)
        return "v" + "i" * (number - 5);
    else if(number < 10)
        return "x" + "i" * (number - 10);
    else if(number < 40)
        return "x" * (number / 10) + "i" * (number % 10);
    else if(number < 50)
        return "l" + "x" * ((number - 40) / 10) + "i" * (number % 10);
    else if(number < 90)
        return "l" + "x" * ((number - 50) / 10) + "i" * (number % 10);
    else if(number < 100)
        return "c" + "x" * ((number - 90) / 10) + "i" * (number % 10);
    else if(number < 400)
        return "c" * (number / 100) + "x" * ((number % 100) / 10) + "i" * (number % 10);
    else if(number < 500)
        return "d" + "c" * ((number - 400) / 100) + "x" * ((number % 100) / 10) + "i" * (number % 10);
    else if(number < 900)
        return "d" + "c" * ((number - 500) / 100) + "x" * ((number % 100) / 10) + "i" * (number % 10);
    else if(number < 1000)
        return "m" * (number / 1000) + "c" * ((number % 1000) / 100) + "x" * ((number % 100) / 10) + "i" * (number % 10);
    else
        return null;
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