
/*
Return only positive numbers in the list.
    >>> get_positive([-1, 2, -4, 5, 6])
    [2, 5, 6]
    >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    [5, 3, 2, 3, 9, 123, 1]
    
*/
int[] get_positive(int[] l) 
{
    int[] result = new int[l.Length];
    int count = 0;
    for (int i = 0; i < l.Length; i++)
    {
        if (l[i] > 0)
        {
            result[count] = l[i];
            count++;
        }
    }
    int[] result2 = new int[count];
    for (int i = 0; i < count; i++)
    {
        result2[i] = result[i];
    }
    return result2;
}

unittest
{
    alias candidate = get_positive;

    assert(candidate([-1, -2, 4, 5, 6]) == [4, 5, 6]);
    assert(candidate([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1]);
    assert(candidate([-1, -2]) == []);
    assert(candidate([]) == []);
}
void main(){}