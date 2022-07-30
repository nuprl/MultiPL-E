import std.math;
import std.typecons;
/*

    Write a function count_nums which takes an array of integers and returns
    the number of elements which has a sum of digits > 0.
    If a number is negative, then its first signed digit will be negative:
    e.g. -123 has signed digits -1, 2, and 3.
    >>> count_nums([]) == 0
    >>> count_nums([-1, 11, -11]) == 1
    >>> count_nums([1, 1, 2]) == 3
    
*/
long count_nums(long[] arr) 
{
    long count = 0;
    for (long i = 0; i < arr.length; i++)
    {
        long sum = 0;
        for (long j = 0; j < arr[i].length(); j++)
        {
            sum += arr[i].charAt(j) - '0';
        }
        if (sum > 0)
        {
            count++;
        }
    }
    return count;
}

unittest
{
    alias candidate = count_nums;

    assert(candidate([]) == 0);
    assert(candidate([-1, -2, 0]) == 0);
    assert(candidate([1, 1, 2, -2, 3, 4, 5]) == 6);
    assert(candidate([1, 6, 9, -6, 0, 1, 5]) == 5);
    assert(candidate([1, 100, 98, -7, 1, -1]) == 4);
    assert(candidate([12, 23, 34, -45, -56, 0]) == 5);
    assert(candidate([0, 1]) == 1);
    assert(candidate([1]) == 1);
}
void main(){}