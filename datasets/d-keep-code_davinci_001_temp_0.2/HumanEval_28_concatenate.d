
/*
 Concatenate list of strings into a single string
    >>> concatenate([])
    ''
    >>> concatenate(['a', 'b', 'c'])
    'abc'
    
*/
const(char)[] concatenate(const(char)[][] strings) 
{
    string result = "";
    foreach(string s in strings)
    {
        result += s;
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