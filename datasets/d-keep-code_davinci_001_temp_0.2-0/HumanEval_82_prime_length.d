import std.typecons;
import std.math;
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
    auto len = strlen(string);
    auto is_prime = true;
    for(auto i = 2; i < len; i++)
    {
        if(len % i == 0)
        {
            is_prime = false;
            break;
        }
    }
    return is_prime;
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