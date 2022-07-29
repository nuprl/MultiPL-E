import std.typecons;
import std.math;
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
    int min = lst[0];
    int max = lst[0];
    int min_index = 0;
    int max_index = 0;
    for (int i = 0; i < lst.Length; i++)
    {
        if (lst[i] < min)
        {
            min = lst[i];
            min_index = i;
        }
        if (lst[i] > max)
        {
            max = lst[i];
            max_index = i;
        }
    }
    result[0] = min;
    result[1] = max;
    for (int i = 2; i < lst.Length; i++)
    {
        if (i % 2 == 0)
        {
            result[i] = lst[min_index];
            min_index++;
        }
        else
        {
            result[i] = lst[max_index];
            max_index--;
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