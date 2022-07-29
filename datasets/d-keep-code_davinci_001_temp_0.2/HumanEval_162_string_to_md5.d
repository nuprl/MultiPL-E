import std.typecons;
import std.math;
/*

    Given a string 'text', return its md5 hash equivalent string.
    If 'text' is an empty string, return None.

    >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    
*/
Nullable!(const(char)[]) string_to_md5(const(char)[] text) 
{
    if (text.length() == 0)
        return null;
    else
        return std.md5.md5(text);
}

unittest
{
    alias candidate = string_to_md5;

{
        auto result = candidate("Hello world");
        assert(!result.isNull && result.get == "3e25960a79dbc69b674cd4ec67a72c62");
}

{
        auto result = candidate("");
        assert(result.isNull);
}

{
        auto result = candidate("A B C");
        assert(!result.isNull && result.get == "0ef78513b0cb8cef12743f5aeb35f888");
}

{
        auto result = candidate("password");
        assert(!result.isNull && result.get == "5f4dcc3b5aa765d61d8327deb882cf99");
}

}
void main(){}