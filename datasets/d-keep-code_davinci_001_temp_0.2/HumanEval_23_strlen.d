
/*
 Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    
*/
int strlen(const(char)[] string) 
{
    int i;
    for (i = 0; string[i] != '\0'; i++)
        ;
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