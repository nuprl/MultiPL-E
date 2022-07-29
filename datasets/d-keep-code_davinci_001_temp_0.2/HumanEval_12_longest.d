import std.typecons;
import std.math;
/*
 Out of list of strings, return the longest one. Return the first one in case of multiple
    strings of the same length. Return None in case the input list is empty.
    >>> longest([])

    >>> longest(['a', 'b', 'c'])
    'a'
    >>> longest(['a', 'bb', 'ccc'])
    'ccc'
    
*/
Nullable!(const(char)[]) longest(const(char)[][] strings) 
{
    if (strings.length() == 0)
        return null;
    else
        return strings[0];
}

unittest
{
    alias candidate = longest;

{
        auto result = candidate([]);
        assert(result.isNull);
}

{
        auto result = candidate(["x", "y", "z"]);
        assert(!result.isNull && result.get == "x");
}

{
        auto result = candidate(["x", "yyy", "zzzz", "www", "kkkk", "abc"]);
        assert(!result.isNull && result.get == "zzzz");
}

}
void main(){}