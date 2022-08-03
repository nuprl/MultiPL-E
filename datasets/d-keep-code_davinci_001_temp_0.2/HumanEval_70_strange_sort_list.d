import std.math;
import std.typecons;
/*

    Given list of integers, return list in strange order.
    Strange sorting, is when you start with the minimum value,
    then maximum of the remaining integers, then minimum and so on.

    Examples:
    strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    strange_sort_list([]) == []
    
*/
long[] strange_sort_list(long[] lst) 
{
    // your code here
    return null;
}
/*
    Given list of integers, return list in strange order.
    Strange sorting, is when you start with the minimum value,
    then maximum of the remaining integers, then minimum and so on.

unittest
{
    alias candidate = strange_sort_list;

    assert(candidate([1L, 2L, 3L, 4L]) == [1L, 4L, 2L, 3L]);
    assert(candidate([5L, 6L, 7L, 8L, 9L]) == [5L, 9L, 6L, 8L, 7L]);
    assert(candidate([1L, 2L, 3L, 4L, 5L]) == [1L, 5L, 2L, 4L, 3L]);
    assert(candidate([5L, 6L, 7L, 8L, 9L, 1L]) == [1L, 9L, 5L, 8L, 6L, 7L]);
    assert(candidate([5L, 5L, 5L, 5L]) == [5L, 5L, 5L, 5L]);
    assert(candidate([]) == []);
    assert(candidate([1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L]) == [1L, 8L, 2L, 7L, 3L, 6L, 4L, 5L]);
    assert(candidate([0L, 2L, 2L, 2L, 5L, 5L, -5L, -5L]) == [-5L, 5L, -5L, 5L, 0L, 2L, 2L, 2L]);
    assert(candidate([111111L]) == [111111L]);
}
void main(){}