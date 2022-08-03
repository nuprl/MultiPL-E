import std.math;
import std.typecons;
/*
 Filter an input list of strings only for ones that start with a given prefix.
    >>> filter_by_prefix([], 'a')
    []
    >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    ['abc', 'array']
    
*/
string[] filter_by_prefix(string[] strings, string prefix) 
{
    if (strings.length() == 0)
        return [];
    else
        return filter(strings, (string s) -> starts_with(s, prefix));
}

unittest
{
    alias candidate = filter_by_prefix;

    assert(candidate([], "john") == []);
    assert(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"]);
}
void main(){}