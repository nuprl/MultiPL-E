
/*
 Filter given list of any python values only for integers
    >>> filter_integers(['a', 3.14, 5])
    [5]
    >>> filter_integers([1, 2, 3, 'abc', {}, []])
    [1, 2, 3]
    
*/
int[] filter_integers(auto[] values) 
{
    return [i for i in values if isinstance(i, int)];
}

unittest
{
    alias candidate = filter_integers;

    assert(candidate([]) == []);
    assert(candidate([4, [], [], 23.2, 9, "adasd"]) == [4, 9]);
    assert(candidate([3, "c", 3, 3, "a", "b"]) == [3, 3, 3]);
}
void main(){}