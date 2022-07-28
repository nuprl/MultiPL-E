
/*
 Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    
*/
const(char)[][] all_prefixes(const(char)[] string) 
{
    const(char)[] prefixes = new const(char)[string.length() + 1];
    for(int i = 0; i < string.length(); i++)
    {
        prefixes[i] = string.substr(0, i);
    }
    prefixes[string.length()] = string;
    return prefixes;
}

unittest
{
    alias candidate = all_prefixes;

    assert(candidate("") == []);
    assert(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
    assert(candidate("WWW") == ["W", "WW", "WWW"]);
}
void main(){}