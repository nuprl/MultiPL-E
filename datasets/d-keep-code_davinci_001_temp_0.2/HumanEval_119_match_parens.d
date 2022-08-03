import std.typecons;
import std.math;
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
    string s = lst[0];
    string t = lst[1];
    if (s.length() == 0) {
        return "Yes";
    }
    if (t.length() == 0) {
        return "No";
    }
    if (s[0] == '(' && t[0] == ')') {
        return match_parens([s.substr(1), t.substr(1)]);
    }
    if (s[0] == ')' && t[0] == '(') {
        return match_parens([s.substr(1), t.substr(1)]);
    }
    return "No";
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