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
Nullable!(string) longest(string[] strings) 
{
    if (strings.length() == 0) {
        return null;
    }
    string longest = strings[0];
    for (int i = 1; i < strings.length(); i++) {
        if (strings[i].length() > longest.length()) {
            longest = strings[i];
        }
    }
    return longest;
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