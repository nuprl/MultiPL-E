
/*
Return median of elements in the list l.
    >>> median([3, 1, 2, 4, 5])
    3
    >>> median([-10, 4, 6, 1000, 10, 20])
    15.0
    
*/
float median(int[] l) 
{
    int n = l.length;
    int[] l2 = new int[n];
    for (int i = 0; i < n; i++)
    {
        l2[i] = l[i];
    }
    Arrays.sort(l2);
    if (n % 2 == 0)
    {
        return (l2[n/2] + l2[n/2-1])/2.0;
    }
    else
    {
        return l2[n/2];
    }
}

unittest
{
    alias candidate = median;

    assert(candidate([3, 1, 2, 4, 5]) == 3);
    assert(candidate([-10, 4, 6, 1000, 10, 20]) == 8.0);
    assert(candidate([5]) == 5);
    assert(candidate([6, 5]) == 5.5);
    assert(candidate([8, 1, 3, 9, 9, 2, 7]) == 7);
}
void main(){}