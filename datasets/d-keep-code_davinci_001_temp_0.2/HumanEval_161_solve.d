
/*
You are given a string s.
    if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    otherwise keep it as it is.
    If the string contains no letters, reverse the string.
    The function should return the resulted string.
    Examples
    solve("1234") = "4321"
    solve("ab") = "AB"
    solve("#a@C") = "#A@c"
    
*/
const(char)[] solve(const(char)[] s) 
{
    int n = s.length();
    char[] res = new char[n];
    int i = 0;
    for(int j = 0; j < n; j++)
    {
        if(isalpha(s[j]))
        {
            if(islower(s[j]))
            {
                res[i++] = toupper(s[j]);
            }
            else
            {
                res[i++] = tolower(s[j]);
            }
        }
        else
        {
            res[i++] = s[j];
        }
    }
    return res;
}
/*
You are given a string s.
    if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    otherwise keep it as it is.
    If the string contains no letters, reverse the string.
    The function should return the resulted string.
    Examples
    solve("1234") = "4321"
    solve("ab") = "AB"
    solve("#a@C") = "#A@c"
    
*/
const(char)[] solve(const(char)[] s) 
{
    int n = s.length();
    char[] res = new char[n];
    int i = 0;
    for(int j = 0; j < n; j++)
    {
        if(isalpha(s[j]))
        {
            if(islower(s[j]))
            {
                res[i++] = toupper(s[j]);
            }
            else
            {
                res[i++] = tolower(s[j]);
            }
        }
        else
        {
            res[i++] = s[j];
        }
    }
    return res;
}
/*
You are given a string s.
    if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    otherwise keep it as it is.
    If the string contains no letters, reverse the string.
    The function should return the resulted string.
   

unittest
{
    alias candidate = solve;

    assert(candidate("AsDf") == "aSdF");
    assert(candidate("1234") == "4321");
    assert(candidate("ab") == "AB");
    assert(candidate("#a@C") == "#A@c");
    assert(candidate("#AsdfW^45") == "#aSDFw^45");
    assert(candidate("#6@2") == "2@6#");
    assert(candidate("#$a^D") == "#$A^d");
    assert(candidate("#ccc") == "#CCC");
}
void main(){}