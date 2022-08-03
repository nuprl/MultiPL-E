import std.typecons;
import std.math;
/*

    triples_sum_to_zero takes a list of integers as an input.
    it returns True if there are three distinct elements in the list that
    sum to zero, and False otherwise.

    >>> triples_sum_to_zero([1, 3, 5, 0])
    False
    >>> triples_sum_to_zero([1, 3, -2, 1])
    True
    >>> triples_sum_to_zero([1, 2, 3, 7])
    False
    >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
    True
    >>> triples_sum_to_zero([1])
    False
    
*/
bool triples_sum_to_zero(long[] l) 
{
    // The following line is a placeholder.  Replace it with your code.
    return false;
}

unittest
{
    alias candidate = triples_sum_to_zero;

    assert(candidate([1L, 3L, 5L, 0L]) == false);
    assert(candidate([1L, 3L, 5L, -1L]) == false);
    assert(candidate([1L, 3L, -2L, 1L]) == true);
    assert(candidate([1L, 2L, 3L, 7L]) == false);
    assert(candidate([1L, 2L, 5L, 7L]) == false);
    assert(candidate([2L, 4L, -5L, 3L, 9L, 7L]) == true);
    assert(candidate([1L]) == false);
    assert(candidate([1L, 3L, 5L, -100L]) == false);
    assert(candidate([100L, 3L, 5L, -100L]) == false);
}
void main(){}