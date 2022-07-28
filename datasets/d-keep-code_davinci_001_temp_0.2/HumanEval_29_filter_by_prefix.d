
/*
 Filter an input list of strings only for ones that start with a given prefix.
    >>> filter_by_prefix([], 'a')
    []
    >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    ['abc', 'array']
    
*/
const(char)[][] filter_by_prefix(const(char)[][] strings, const(char)[] prefix) 
{
    return strings;
}

unittest
{
    alias candidate = filter_by_prefix;

    assert(candidate([], "john") == []);
    assert(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"]);
}
void main(){}