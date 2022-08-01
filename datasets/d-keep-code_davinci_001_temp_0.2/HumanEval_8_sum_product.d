import std.typecons;
import std.math;
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
    if(numbers.length == 0)
    {
        return (0, 1);
    }
    else
    {
        var sum = 0;
        var product = 1;
        for(var i = 0; i < numbers.length; i++)
        {
            sum += numbers[i];
            product *= numbers[i];
        }
        return (sum, product);
    }
}

unittest
{
    alias candidate = sum_product;

    assert(candidate([]) == tuple(0, 1));
    assert(candidate([1, 1, 1]) == tuple(3, 1));
    assert(candidate([100, 0]) == tuple(100, 0));
    assert(candidate([3, 5, 7]) == tuple(15, 105));
    assert(candidate([10]) == tuple(10, 10));
}
void main(){}