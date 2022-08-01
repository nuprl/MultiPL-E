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

    assert(candidate(5L) == false);
    assert(candidate(30L) == true);
    assert(candidate(8L) == true);
    assert(candidate(10L) == false);
    assert(candidate(125L) == true);
    assert(candidate(105L) == true);
    assert(candidate(126L) == false);
    assert(candidate(729L) == false);
    assert(candidate(891L) == false);
    assert(candidate(1001L) == true);
}
void main(){}