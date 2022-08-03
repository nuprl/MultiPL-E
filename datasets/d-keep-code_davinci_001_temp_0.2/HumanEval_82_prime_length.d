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
bool prime_length(string string) 
{
    int length = string.length();
    if(length == 1)
    {
        return false;
    }
    else
    {
        for(int i = 2; i < length; i++)
        {
            if(length % i == 0)
            {
                return false;
            }
        }
        return true;
    }
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