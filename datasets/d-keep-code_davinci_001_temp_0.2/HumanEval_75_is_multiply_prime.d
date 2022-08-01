import std.typecons;
import std.math;
/*
Write a function that returns true if the given number is the multiplication of 3 prime numbers
    and false otherwise.
    Knowing that (a) is less then 100. 
    Example:
    is_multiply_prime(30) == True
    30 = 2 * 3 * 5
    
*/
bool is_multiply_prime(long a) 
{
    if (a < 100)
    {
        if (a == 2 || a == 3 || a == 5 || a == 7)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        for (int i = 2; i <= a / 2; i++)
        {
            if (a % i == 0)
            {
                return false;
            }
        }
        return true;
    }
}

unittest
{
    alias candidate = is_multiply_prime;

    assert(candidate(5) == false);
    assert(candidate(30) == true);
    assert(candidate(8) == true);
    assert(candidate(10) == false);
    assert(candidate(125) == true);
    assert(candidate(105) == true);
    assert(candidate(126) == false);
    assert(candidate(729) == false);
    assert(candidate(891) == false);
    assert(candidate(1001) == true);
}
void main(){}