import std.math;
/*
 Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    >>> intersperse([], 4)
    []
    >>> intersperse([1, 2, 3], 4)
    [1, 4, 2, 4, 3]
    
*/
long[] intersperse(long[] numbers, long delimeter) 
{
    long[] result = new long[numbers.length * 2 - 1];
    for (int i = 0; i < numbers.length; i++) 
    {
        result[i * 2] = numbers[i];
        if (i < numbers.length - 1) 
        {
            result[i * 2 + 1] = delimeter;
        }
    }
    return result;
}

unittest
{
    alias candidate = intersperse;

    assert(candidate([], 7) == []);
    assert(candidate([5, 6, 3, 2], 8) == [5, 8, 6, 8, 3, 8, 2]);
    assert(candidate([2, 2, 2], 2) == [2, 2, 2, 2, 2]);
}
void main(){}