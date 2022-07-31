import std.math;
import std.typecons;
/*
Write a function that takes a string and returns True if the string
    length is a prime number or False otherwise
    Examples
    prime_length('Hello') == True
    prime_length('abcdcba') == True
    prime_length('kittens') == True
    prime_length('orange') == False
    
*/
bool prime_length(const(char)[] string) 
{
    int len = string.length();
    if (len == 0)
        return false;
    if (len == 1)
        return true;
    if (len == 2)
        return false;
    if (len == 3)
        return true;
    if (len % 2 == 0)
        return false;
    if (len % 3 == 0)
        return false;
    for (int i = 5; i * i <= len; i += 6)
        if (len % i == 0 || len % (i + 2) == 0)
            return false;
    return true;
}

unittest
{
    alias candidate = prime_length;

    assert(candidate("Hello") == true);
    assert(candidate("abcdcba") == true);
    assert(candidate("kittens") == true);
    assert(candidate("orange") == false);
    assert(candidate("wow") == true);
    assert(candidate("world") == true);
    assert(candidate("MadaM") == true);
    assert(candidate("Wow") == true);
    assert(candidate("") == false);
    assert(candidate("HI") == true);
    assert(candidate("go") == true);
    assert(candidate("gogo") == false);
    assert(candidate("aaaaaaaaaaaaaaa") == false);
    assert(candidate("Madam") == true);
    assert(candidate("M") == false);
    assert(candidate("0") == false);
}
void main(){}