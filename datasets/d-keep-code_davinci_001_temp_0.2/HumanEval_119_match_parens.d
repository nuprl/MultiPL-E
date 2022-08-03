import std.math;
import std.typecons;
/*

    You are given a list of two strings, both strings consist of open
    parentheses '(' or close parentheses ')' only.
    Your job is to check if it is possible to concatenate the two strings in
    some order, that the resulting string will be good.
    A string S is considered to be good if and only if all parentheses in S
    are balanced. For example: the string '(())()' is good, while the string
    '())' is not.
    Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.

    Examples:
    match_parens(['()(', ')']) == 'Yes'
    match_parens([')', ')']) == 'No'
    
*/
string match_parens(string[] lst) 
{
    string s1 = lst[0];
    string s2 = lst[1];
    string res = "";
    int len1 = s1.length();
    int len2 = s2.length();
    int i = 0;
    int j = 0;
    while (i < len1 && j < len2)
    {
        if (s1[i] == '(' && s2[j] == ')')
        {
            res += s1[i];
            res += s2[j];
            i++;
            j++;
        }
        else if (s1[i] == ')')
        {
            res += s1[i];
            j++;
        }
        else if (s2[j] == '(')
        {
            res += s2[j];
            i++;
        }
        else
        {
            return "No";
        }
    }
    if (i < len1)
    {
        for (int k = i; k < len1; k++)
        {
            res += s1[k];
        }
    }
    if (j < len2)
    {
        for (int k = j; k < len2; k++)
        {
            res += s2[k];
        }
    }
    return res;
}

unittest
{
    alias candidate = match_parens;

    assert(candidate(["()(", ")"]) == "Yes");
    assert(candidate([")", ")"]) == "No");
    assert(candidate(["(()(())", "())())"]) == "No");
    assert(candidate([")())", "(()()("]) == "Yes");
    assert(candidate(["(())))", "(()())(("]) == "Yes");
    assert(candidate(["()", "())"]) == "No");
    assert(candidate(["(()(", "()))()"]) == "Yes");
    assert(candidate(["((((", "((())"]) == "No");
    assert(candidate([")(()", "(()("]) == "No");
    assert(candidate([")(", ")("]) == "No");
    assert(candidate(["(", ")"]) == "Yes");
    assert(candidate([")", "("]) == "Yes");
}
void main(){}