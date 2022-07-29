import std.math;
import std.typecons;
/*
 From a list of integers, remove all elements that occur more than once.
    Keep order of elements left the same as in the input.
    >>> remove_duplicates([1, 2, 3, 2, 4])
    [1, 3, 4]
    
*/
long[] remove_duplicates(long[] numbers) 
{
    var result = new List<long>();
    var seen = new List<long>();
    foreach (var n in numbers)
    {
        if (!seen.Contains(n))
        {
            seen.Add(n);
            result.Add(n);
        }
    }
    return result.ToArray();
}

unittest
{
    alias candidate = remove_duplicates;

    assert(candidate([]) == []);
    assert(candidate([1, 2, 3, 4]) == [1, 2, 3, 4]);
    assert(candidate([1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5]);
}
void main(){}