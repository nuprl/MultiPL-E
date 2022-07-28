
/*
 From a given list of integers, generate a list of rolling maximum element found until given moment
    in the sequence.
    >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    [1, 2, 3, 3, 3, 4, 4]
    
*/
int[] rolling_max(int[] numbers) 
{
    int[] result = new int[numbers.Length];
    result[0] = numbers[0];
    for (int i = 1; i < numbers.Length; i++)
    {
        result[i] = Math.Max(result[i - 1], numbers[i]);
    }
    return result;
}

unittest
{
    alias candidate = rolling_max;

    assert(candidate([]) == []);
    assert(candidate([1, 2, 3, 4]) == [1, 2, 3, 4]);
    assert(candidate([4, 3, 2, 1]) == [4, 4, 4, 4]);
    assert(candidate([3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100]);
}
void main(){}