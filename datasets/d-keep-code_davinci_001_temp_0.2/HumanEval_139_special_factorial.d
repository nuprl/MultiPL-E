
/*
The Brazilian factorial is defined as:
    brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    where n > 0

    For example:
    >>> special_factorial(4)
    288

    The function will receive an integer as input and should return the special
    factorial of this integer.
    
*/
int special_factorial(int n) 
{
    int result = 1;
    for (int i = n; i > 0; i--)
    {
        result *= i;
    }
    return result;
}

unittest
{
    alias candidate = special_factorial;

    assert(candidate(4) == 288);
    assert(candidate(5) == 34560);
    assert(candidate(7) == 125411328000);
    assert(candidate(1) == 1);
}
void main(){}