import std.typecons;
import std.math;
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
    const(char)[] result = new const(char)[s.length];
    for(int i = 0; i < s.length; i++)
    {
        if(std.typecons.isLetter(s[i]))
        {
            if(std.math.isLower(s[i]))
            {
                result[i] = std.math.toUpper(s[i]);
            }
            else
            {
                result[i] = std.math.toLower(s[i]);
            }
        }
        else
        {
            result[i] = s[i];
        }
    }
    return result;
}

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