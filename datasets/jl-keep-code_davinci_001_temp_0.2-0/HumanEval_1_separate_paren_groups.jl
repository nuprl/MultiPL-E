""" Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    separate those group into separate strings and return the list of those.
    Separate groups are balanced (each open brace is properly closed) and not nested within each other
    Ignore any spaces in the input string.
    >>> separate_paren_groups('( ) (( )) (( )( ))')
    ['()', '(())', '(()())']
    """
function separate_paren_groups(paren_string::String)::Vector{String} 
    paren_string = replace(paren_string, ' ', '')
    paren_groups = Vector{String}()
    paren_group = ""
    for i in 1:length(paren_string)
        if paren_string[i] == '('
            paren_group = paren_group * paren_string[i]
        elseif paren_string[i] == ')'
            paren_group = paren_group * paren_string[i]
            paren_groups = push!(paren_groups, paren_group)
            paren_group = ""
        end
    end
    return paren_groups
end

using Test

@testset begin

candidate = separate_paren_groups;
	@test(candidate("(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
	@test(candidate("() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
	@test(candidate("(()(())((())))") == ["(()(())((())))"])
	@test(candidate("( ) (( )) (( )( ))") == ["()", "(())", "(()())"])
end
