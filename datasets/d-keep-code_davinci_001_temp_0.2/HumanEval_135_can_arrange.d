
/*
Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange([1,2,4,3,5]) = 3
    can_arrange([1,2,3]) = -1
    
*/
int can_arrange(int[] arr) 
{
    int i, j;
    for (i = 0; i < arr.Length; i++)
    {
        for (j = i + 1; j < arr.Length; j++)
        {
            if (arr[i] > arr[j])
            {
                return i;
            }
        }
    }
    return -1;
}

unittest
{
    alias candidate = can_arrange;

    assert(candidate([1, 2, 4, 3, 5]) == 3);
    assert(candidate([1, 2, 4, 5]) == -1);
    assert(candidate([1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2);
    assert(candidate([4, 8, 5, 7, 3]) == 4);
    assert(candidate([]) == -1);
}
void main(){}