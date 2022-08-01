import std.typecons;
import std.math;
/*
 From a given list of integers, generate a list of rolling maximum element found until given moment
    in the sequence.
    >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    [1, 2, 3, 3, 3, 4, 4]
    
*/
long[] rolling_max(long[] numbers) 
{
    long[] result = new long[numbers.length];
    result[0] = numbers[0];
    for (int i = 1; i < numbers.length; i++)
    {
        result[i] = std.math.max(numbers[i], result[i - 1]);
    }
    return result;
}

unittest
{
    alias candidate = rolling_max;

    assert(candidate([]) == []);
    assert(candidate([1L, 2L, 3L, 4L]) == [1L, 2L, 3L, 4L]);
    assert(candidate([4L, 3L, 2L, 1L]) == [4L, 4L, 4L, 4L]);
    assert(candidate([3L, 2L, 3L, 100L, 3L]) == [3L, 3L, 3L, 100L, 100L]);
}
void main(){}