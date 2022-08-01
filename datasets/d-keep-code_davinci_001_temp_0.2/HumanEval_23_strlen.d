import std.typecons;
import std.math;
/*
 Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    
*/
long strlen(const(char)[] string) 
{
    long len = 0;
    while(string[len] != '\0')
    {
        len++;
    }
    return len;
}

unittest
{
    alias candidate = strlen;

    assert(candidate("") == 0);
    assert(candidate("x") == 1);
    assert(candidate("asdasnakj") == 9);
}
void main(){}