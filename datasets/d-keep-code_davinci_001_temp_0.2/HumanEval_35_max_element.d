
/*
Return maximum element in the list.
    >>> max_element([1, 2, 3])
    3
    >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    123
    
*/
int max_element(int[] l) 
{
    int max = l[0];
    for (int i = 1; i < l.Length; i++)
    {
        if (l[i] > max)
        {
            max = l[i];
        }
    }
    return max;
}

unittest
{
    alias candidate = max_element;

    assert(candidate([1, 2, 3]) == 3);
    assert(candidate([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]) == 124);
}
void main(){}