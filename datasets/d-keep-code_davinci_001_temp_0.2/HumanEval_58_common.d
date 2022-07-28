
/*
Return sorted unique common elements for two lists.
    >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    [1, 5, 653]
    >>> common([5, 3, 2, 8], [3, 2])
    [2, 3]

    
*/
int[] common(int[] l1, int[] l2) 
{
    int[] result = new int[0];
    for (int i = 0; i < l1.Length; i++)
    {
        for (int j = 0; j < l2.Length; j++)
        {
            if (l1[i] == l2[j])
            {
                result = result.Concat(new int[] { l1[i] }).ToArray();
            }
        }
    }
    return result.Distinct().ToArray();
}

unittest
{
    alias candidate = common;

    assert(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653]);
    assert(candidate([5, 3, 2, 8], [3, 2]) == [2, 3]);
    assert(candidate([4, 3, 2, 8], [3, 2, 4]) == [2, 3, 4]);
    assert(candidate([4, 3, 2, 8], []) == []);
}
void main(){}