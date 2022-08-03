import std.typecons;
import std.math;
/*
 Filter an input list of strings only for ones that start with a given prefix.
    >>> filter_by_prefix([], 'a')
    []
    >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    ['abc', 'array']
    
*/
string[] filter_by_prefix(string[] strings, string prefix) 
{
    string[] filtered = [];
    foreach(string s in strings) {
        if(s.substr(0, prefix.length) == prefix) {
            filtered.insertLast(s);
        }
    }
    return filtered;
}

unittest
{
    alias candidate = filter_by_prefix;

    assert(candidate([], "john") == []);
    assert(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"]);
}
void main(){}