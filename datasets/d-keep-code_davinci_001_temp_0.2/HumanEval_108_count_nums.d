
/*

    Write a function count_nums which takes an array of integers and returns
    the number of elements which has a sum of digits > 0.
    If a number is negative, then its first signed digit will be negative:
    e.g. -123 has signed digits -1, 2, and 3.
    >>> count_nums([]) == 0
    >>> count_nums([-1, 11, -11]) == 1
    >>> count_nums([1, 1, 2]) == 3
    
*/
int count_nums(int[] arr) 
{
    int count = 0;
    for (int i = 0; i < arr.Length; i++)
    {
        int sum = 0;
        int num = arr[i];
        while (num > 0)
        {
            sum += num % 10;
            num /= 10;
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