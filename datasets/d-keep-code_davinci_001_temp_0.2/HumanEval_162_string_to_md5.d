
/*

    Given a string 'text', return its md5 hash equivalent string.
    If 'text' is an empty string, return None.

    >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    
*/
auto string_to_md5(const(char)[] text) 
    -> const(char)[]
{
    if(!text)
        return null;
    
    return md5(text);
}

unittest
{
    alias candidate = string_to_md5;

    assert(candidate("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62");
    assert(candidate("") == None);
    assert(candidate("A B C") == "0ef78513b0cb8cef12743f5aeb35f888");
    assert(candidate("password") == "5f4dcc3b5aa765d61d8327deb882cf99");
}
void main(){}