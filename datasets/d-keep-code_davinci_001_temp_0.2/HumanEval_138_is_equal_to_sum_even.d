import std.typecons;
import std.math;
/*
Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    Example
    is_equal_to_sum_even(4) == False
    is_equal_to_sum_even(6) == False
    is_equal_to_sum_even(8) == True
    
*/
bool is_equal_to_sum_even(long n) 
{
    if(n == 0)
        return true;
    if(n % 2 != 0)
        return false;
    return is_equal_to_sum_even(n - 2);
}

unittest
{
    alias candidate = is_equal_to_sum_even;

    assert(candidate(4) == false);
    assert(candidate(6) == false);
    assert(candidate(8) == true);
    assert(candidate(10) == true);
    assert(candidate(11) == false);
    assert(candidate(12) == true);
    assert(candidate(13) == false);
    assert(candidate(16) == true);
}
void main(){}