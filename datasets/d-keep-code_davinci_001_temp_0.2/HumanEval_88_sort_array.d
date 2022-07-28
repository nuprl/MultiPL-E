
/*

    Given an array of non-negative integers, return a copy of the given array after sorting,
    you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    or sort it in descending order if the sum( first index value, last index value) is even.

    Note:
    * don't change the given array.

    Examples:
    * sort_array([]) => []
    * sort_array([5]) => [5]
    * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    
*/
int[] sort_array(int[] array) 
{
    int[] result = new int[array.Length];
    int[] temp = new int[array.Length];
    int sum = 0;
    int index = 0;
    for (int i = 0; i < array.Length; i++)
    {
        sum += array[i];
    }
    if (sum % 2 == 0)
    {
        for (int i = 0; i < array.Length; i++)
        {
            temp[i] = array[i];
        }
        Array.Sort(temp);
        for (int i = 0; i < array.Length; i++)
        {
            result[i] = temp[i];
        }
    }
    else
    {
        for (int i = 0; i < array.Length; i++)
        {
            temp[i] = array[i];
        }
        Array.Sort(temp);
        Array.Reverse(temp);
        for (int i = 0; i < array.Length; i++)
        {
            result[i] = temp[i];
        }
    }
    return result;
}

unittest
{
    alias candidate = sort_array;

    assert(candidate([]) == []);
    assert(candidate([5]) == [5]);
    assert(candidate([2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5]);
    assert(candidate([2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0]);
    assert(candidate([2, 1]) == [1, 2]);
    assert(candidate([15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87]);
    assert(candidate([21, 14, 23, 11]) == [23, 21, 14, 11]);
}
void main(){}