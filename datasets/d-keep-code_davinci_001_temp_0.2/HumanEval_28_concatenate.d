import std.math;
import std.typecons;
/*
 Concatenate list of strings into a single string
    >>> concatenate([])
    ''
    >>> concatenate(['a', 'b', 'c'])
    'abc'
    
*/
const(char)[] concatenate(const(char)[][] strings) 
{
    var result = "";
    for (var i = 0; i < strings.length; i++)
    {
        result += strings[i];
    }
    return result;
}
/*
    >>> concatenate(['a', 'b', 'c'])
    'abc'
*/

unittest
{
    alias candidate = concatenate;

    assert(candidate([]) == "");
    assert(candidate(["x", "y", "z"]) == "xyz");
    assert(candidate(["x", "y", "z", "w", "k"]) == "xyzwk");
}
void main(){}