import std.typecons;
import std.math;
/*
 Concatenate list of strings into a single string
    >>> concatenate([])
    ''
    >>> concatenate(['a', 'b', 'c'])
    'abc'
    
*/
const(char)[] concatenate(const(char)[][] strings) 
{
    var(char)[] result = new(char)[];
    foreach(string, string in strings)
    {
        result.push_all(string);
    }
    return result;
}

unittest
{
    alias candidate = concatenate;

    assert(candidate([]) == "");
    assert(candidate(["x", "y", "z"]) == "xyz");
    assert(candidate(["x", "y", "z", "w", "k"]) == "xyzwk");
}
void main(){}