import std.math;
import std.typecons;
/*
 For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    Empty sum should be equal to 0 and empty product should be equal to 1.
    >>> sum_product([])
    (0, 1)
    >>> sum_product([1, 2, 3, 4])
    (10, 24)
    
*/
Tuple!(long, long) sum_product(long[] numbers) 
{
    Tuple!(long, long) result;
    if (numbers.length == 0)
    {
        result.first = 0;
        result.second = 1;
    }
    else
    {
        result.first = std.math.sum(numbers);
        result.second = std.math.product(numbers);
    }
    return result;
}

unittest
{
    alias candidate = sum_product;

    assert(candidate([]) == tuple(0L, 1L));
    assert(candidate([1L, 1L, 1L]) == tuple(3L, 1L));
    assert(candidate([100L, 0L]) == tuple(100L, 0L));
    assert(candidate([3L, 5L, 7L]) == tuple(15L, 105L));
    assert(candidate([10L]) == tuple(10L, 10L));
}
void main(){}