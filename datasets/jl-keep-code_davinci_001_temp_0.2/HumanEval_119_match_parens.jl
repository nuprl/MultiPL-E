"""
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
    """
function match_parens(lst::Vector{String})::String 
    for i in lst
        if i.count("(") != i.count(")")
            return "No"
        end
    end
    return "Yes"
end
match_parens(['()(', ')'])
match_parens([')', ')'])


using Test

@testset begin

candidate = match_parens;
	@test(candidate(["()(", ")"]) == "Yes")
	@test(candidate([")", ")"]) == "No")
	@test(candidate(["(()(())", "())())"]) == "No")
	@test(candidate([")())", "(()()("]) == "Yes")
	@test(candidate(["(())))", "(()())(("]) == "Yes")
	@test(candidate(["()", "())"]) == "No")
	@test(candidate(["(()(", "()))()"]) == "Yes")
	@test(candidate(["((((", "((())"]) == "No")
	@test(candidate([")(()", "(()("]) == "No")
	@test(candidate([")(", ")("]) == "No")
	@test(candidate(["(", ")"]) == "Yes")
	@test(candidate([")", "("]) == "Yes")
end
