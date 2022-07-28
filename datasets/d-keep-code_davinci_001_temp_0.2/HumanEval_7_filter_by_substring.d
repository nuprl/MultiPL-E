
/*
 Filter an input list of strings only for ones that contain given substring
    >>> filter_by_substring([], 'a')
    []
    >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    ['abc', 'bacd', 'array']
    
*/
const(char)[][] filter_by_substring(const(char)[][] strings, const(char)[] substring) 
{
    if(substring.length == 0)
        return strings;
    
    const(char)[] filtered = [];
    for(const(char)[] string : strings)
    {
        for(const(char) c : string)
        {
            if(c == substring[0])
            {
                bool found = true;
                for(int i = 1; i < substring.length; i++)
                {
                    if(string[i] != substring[i])
                    {
                        found = false;
                        break;
                    }
                }
                if(found)
                    filtered.push(string);
            }
        }
    }
    return filtered;
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