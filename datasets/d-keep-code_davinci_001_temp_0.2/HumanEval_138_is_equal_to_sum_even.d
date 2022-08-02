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

    assert(candidate(4L) == false);
    assert(candidate(6L) == false);
    assert(candidate(8L) == true);
    assert(candidate(10L) == true);
    assert(candidate(11L) == false);
    assert(candidate(12L) == true);
    assert(candidate(13L) == false);
    assert(candidate(16L) == true);
}
void main(){}