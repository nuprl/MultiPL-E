import std.math;
import std.typecons;
/*
 For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    >>> flip_case('Hello')
    'hELLO'
    
*/
string flip_case(string string) 
{
    string result = "";
    foreach(char c in string)
    {
        if(c >= 'A' && c <= 'Z')
        {
            result += char(c + 32);
        }
        else if(c >= 'a' && c <= 'z')
        {
            result += char(c - 32);
        }
        else
        {
            result += c;
        }
    }
    return result;
}

unittest
{
    alias candidate = flip_case;

    assert(candidate("") == "");
    assert(candidate("Hello!") == "hELLO!");
    assert(candidate("These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS");
}
void main(){}