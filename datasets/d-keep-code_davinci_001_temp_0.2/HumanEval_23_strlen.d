import std.typecons;
import std.math;
/*
 Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    
*/
int strlen(const(char)[] string) 
{
    int i = 0;
    for(; string[i] != 0; i++)
    {
        // empty loop
    }
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