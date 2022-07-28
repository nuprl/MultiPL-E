
/*
 For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    >>> flip_case('Hello')
    'hELLO'
    
*/
const(char)[] flip_case(const(char)[] string) 
{
    const(char)[] result = new(char)[string.length];
    for(int i = 0; i < string.length; i++)
    {
        if(string[i] >= 'A' && string[i] <= 'Z')
        {
            result[i] = string[i] + 32;
        }
        else if(string[i] >= 'a' && string[i] <= 'z')
        {
            result[i] = string[i] - 32;
        }
        else
        {
            result[i] = string[i];
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