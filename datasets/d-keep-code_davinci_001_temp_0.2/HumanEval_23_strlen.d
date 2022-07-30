import std.math;
import std.typecons;
/*
 Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    
*/
long strlen(const(char)[] string) 
{
    long i = 0;
    while(string[i] != '\0')
        i++;
    return i;
}

unittest
{
    alias candidate = strlen;

    assert(candidate("") == 0);
    assert(candidate("x") == 1);
    assert(candidate("asdasnakj") == 9);
}
void main(){}