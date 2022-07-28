
/*
 Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    >>> intersperse([], 4)
    []
    >>> intersperse([1, 2, 3], 4)
    [1, 4, 2, 4, 3]
    
*/
int[] intersperse(int[] numbers, int delimeter) 
{
    int[] result = new int[numbers.Length * 2 - 1];
    int index = 0;
    for (int i = 0; i < numbers.Length; i++) 
    {
        result[index++] = numbers[i];
        if (i < numbers.Length - 1) 
        {
            result[index++] = delimeter;
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