import std.math;
import std.typecons;
/*
 Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    
*/
long strlen(string string) 
{
    return strlen_(string);
}

unittest
{
    alias candidate = strlen;

    assert(candidate("") == 0L);
    assert(candidate("x") == 1L);
    assert(candidate("asdasnakj") == 9L);
}
void main(){}