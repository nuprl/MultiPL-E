
/*

    You are given a list of integers.
    Write a function next_smallest() that returns the 2nd smallest element of the list.
    Return None if there is no such element.
    
    next_smallest([1, 2, 3, 4, 5]) == 2
    next_smallest([5, 1, 4, 3, 2]) == 2
    next_smallest([]) == None
    next_smallest([1, 1]) == None
    
*/
auto next_smallest(int[] lst) 
{
    if (lst.size() == 0) return nullptr;
    int min = lst[0];
    int min_index = 0;
    for (int i = 1; i < lst.size(); i++)
    {
        if (lst[i] < min)
        {
            min = lst[i];
            min_index = i;
        }
    }
    if (min_index == 0) return nullptr;
    return lst[min_index - 1];
}

unittest
{
    alias candidate = next_smallest;

    assert(candidate([1, 2, 3, 4, 5]) == 2);
    assert(candidate([5, 1, 4, 3, 2]) == 2);
    assert(candidate([]) == None);
    assert(candidate([1, 1]) == None);
    assert(candidate([1, 1, 1, 1, 0]) == 1);
    assert(candidate([1, 1]) == None);
    assert(candidate([-35, 34, 12, -45]) == -35);
}
void main(){}