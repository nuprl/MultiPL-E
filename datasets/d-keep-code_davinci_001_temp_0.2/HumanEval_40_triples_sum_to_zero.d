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

    assert(candidate([1, 3, 5, 0]) == false);
    assert(candidate([1, 3, 5, -1]) == false);
    assert(candidate([1, 3, -2, 1]) == true);
    assert(candidate([1, 2, 3, 7]) == false);
    assert(candidate([1, 2, 5, 7]) == false);
    assert(candidate([2, 4, -5, 3, 9, 7]) == true);
    assert(candidate([1]) == false);
    assert(candidate([1, 3, 5, -100]) == false);
    assert(candidate([100, 3, 5, -100]) == false);
}
void main(){}