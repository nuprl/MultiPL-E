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
const(char)[] match_parens(const(char)[][] lst) 
{
    if(lst.length() == 0)
        return {};
    if(lst.length() == 1)
        return {'No'};
    if(lst.length() == 2)
    {
        if(lst[0].length() == 0)
            return {'No'};
        if(lst[0].length() == 1)
            return {'Yes'};
        if(lst[0].length() == 2)
        {
            if(lst[0][0] == '(' && lst[0][1] == ')')
                return {'Yes'};
            else
                return {'No'};
        }
    }
    if(lst[0].length() == 0)
        return {'No'};
    if(lst[0].length() == 1)
        return {'Yes'};
    if(lst[0].length() == 2)
    {
        if(lst[0][0] == '(' && lst[0][1] == ')')
            return {'Yes'};
        else
            return {'No'};
    }
    if(lst[0].length() == 3)
    {
        if(lst[0][0] == '(' && lst[0][1] == '(' && lst[0][2] == ')')
            return {'Yes'};
        else
            return {'No'};
    }
    if(lst[0].length() == 4)
    {
        if(lst[0][0] == '(' && lst[0][1] == '(' && lst[0][2] == '(' && lst[0][3] == ')')
            return {'Yes'};
        else
            return {'No'};
    }
    if(lst[0].length() == 5)
    {
        if(lst[0][0] == '(' && lst[0][1] == '(' && lst[0][2] == '(' && lst[0][3] ==

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