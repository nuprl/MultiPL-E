import std.math;
/*
 Filter an input list of strings only for ones that contain given substring
    >>> filter_by_substring([], 'a')
    []
    >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    ['abc', 'bacd', 'array']
    
*/
const(char)[][] filter_by_substring(const(char)[][] strings, const(char)[] substring) 
{
    if(strings.size() == 0)
        return strings;
    if(substring.size() == 0)
        return strings;
    const(char)[] result = [];
    for(const(char)[] string : strings)
    {
        if(string.contains(substring))
            result.push(string);
    }
    return result;
}

unittest
{
    alias candidate = filter_by_substring;

    assert(candidate([], "john") == []);
    assert(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"]);
    assert(candidate(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx") == ["xxx", "aaaxxy", "xxxAAA", "xxx"]);
    assert(candidate(["grunt", "trumpet", "prune", "gruesome"], "run") == ["grunt", "prune"]);
}
void main(){}