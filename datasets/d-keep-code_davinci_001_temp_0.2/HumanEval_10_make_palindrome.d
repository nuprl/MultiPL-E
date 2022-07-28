
/*
 Find the shortest palindrome that begins with a supplied string.
    Algorithm idea is simple:
    - Find the longest postfix of supplied string that is a palindrome.
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome('')
    ''
    >>> make_palindrome('cat')
    'catac'
    >>> make_palindrome('cata')
    'catac'
    
*/
const(char)[] make_palindrome(const(char)[] string) 
{
    const(char)[] result = new(char, length(string) * 2);
    int i = 0;
    int j = length(string) - 1;
    while(i < j)
    {
        if(string[i] == string[j])
        {
            result[i] = string[i];
            result[j] = string[j];
            i++;
            j--;
        }
        else
        {
            break;
        }
    }
    if(i == j)
    {
        result[i] = string[i];
    }
    else
    {
        int k = length(string) - 1;
        while(k >= i)
        {
            if(is_palindrome(string[i:k]))
            {
                break;
            }
            k--;
        }
        for(int l = 0; l < length(string) - k; l++)
        {
            result[i + l] = string[k + l];
        }
        for(int l = 0; l < i; l++)
        {
            result[length(string) + i - l - 1] = string[l];
        }
    }
    return result;
}

unittest
{
    alias candidate = make_palindrome;

    assert(candidate("") == "");
    assert(candidate("x") == "x");
    assert(candidate("xyz") == "xyzyx");
    assert(candidate("xyx") == "xyx");
    assert(candidate("jerry") == "jerryrrej");
}
void main(){}