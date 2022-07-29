""" Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    separate those group into separate strings and return the list of those.
    Separate groups are balanced (each open brace is properly closed) and not nested within each other
    Ignore any spaces in the input string.
    >>> separate_paren_groups('( ) (( )) (( )( ))')
    ['()', '(())', '(()())']
    """
function separate_paren_groups(paren_string::String)::Vector{String} 
    paren_string = replace(paren_string, " ", "")
    paren_string = replace(paren_string, ")(", ") (")
    paren_string = replace(paren_string, ")", " )")
    paren_string = replace(paren_string, "(", " (")
    paren_string = replace(paren_string, ")", ") ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(paren_string, "  ", " ")
    paren_string = replace(

using Test

@testset begin

candidate = separate_paren_groups;
	@test(candidate("(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
	@test(candidate("() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
	@test(candidate("(()(())((())))") == ["(()(())((())))"])
	@test(candidate("( ) (( )) (( )( ))") == ["()", "(())", "(()())"])
end
