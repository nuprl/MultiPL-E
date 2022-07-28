
/*
Given a positive integer n, return the product of the odd digits.
    Return 0 if all digits are even.
    For example:
    digits(1)  == 1
    digits(4)  == 0
    digits(235) == 15
    
*/
int digits(int n) 
{
    int product = 1;
    while (n > 0)
    {
        int digit = n % 10;
        if (digit % 2 != 0)
        {
            product *= digit;
        }
        n /= 10;
    }
    return product;
}

unittest
{
    alias candidate = digits;

    assert(candidate(5) == 5);
    assert(candidate(54) == 5);
    assert(candidate(120) == 1);
    assert(candidate(5014) == 5);
    assert(candidate(98765) == 315);
    assert(candidate(5576543) == 2625);
    assert(candidate(2468) == 0);
}
void main(){}