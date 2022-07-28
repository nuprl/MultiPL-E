
/*

    Given list of integers, return list in strange order.
    Strange sorting, is when you start with the minimum value,
    then maximum of the remaining integers, then minimum and so on.

    Examples:
    strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    strange_sort_list([]) == []
    
*/
int[] strange_sort_list(int[] lst) 
{
    int[] result = new int[lst.Length];
    int i = 0;
    int j = lst.Length - 1;
    int min = lst[0];
    int max = lst[lst.Length - 1];
    int minIndex = 0;
    int maxIndex = lst.Length - 1;
    while (i <= j)
    {
        if (minIndex < maxIndex)
        {
            result[i] = min;
            i++;
            minIndex++;
        }
        if (minIndex < maxIndex)
        {
            result[j] = max;
            j--;
            maxIndex--;
        }
        if (minIndex == maxIndex)
        {
            result[i] = min;
            result[j] = max;
            i++;
            j--;
        }
    }
    return result;
}

unittest
{
    alias candidate = strange_sort_list;

    assert(candidate([1, 2, 3, 4]) == [1, 4, 2, 3]);
    assert(candidate([5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7]);
    assert(candidate([1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3]);
    assert(candidate([5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7]);
    assert(candidate([5, 5, 5, 5]) == [5, 5, 5, 5]);
    assert(candidate([]) == []);
    assert(candidate([1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5]);
    assert(candidate([0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2]);
    assert(candidate([111111]) == [111111]);
}
void main(){}