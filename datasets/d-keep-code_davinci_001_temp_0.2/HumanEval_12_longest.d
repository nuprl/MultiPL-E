
/*
 Out of list of strings, return the longest one. Return the first one in case of multiple
    strings of the same length. Return None in case the input list is empty.
    >>> longest([])

    >>> longest(['a', 'b', 'c'])
    'a'
    >>> longest(['a', 'bb', 'ccc'])
    'ccc'
    
*/
auto longest(const(char)[][] strings) 
    => strings.empty() ? none : some(strings[0]);

unittest
{
    alias candidate = longest;

    assert(candidate([]) == None);
    assert(candidate(["x", "y", "z"]) == "x");
    assert(candidate(["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz");
}
void main(){}