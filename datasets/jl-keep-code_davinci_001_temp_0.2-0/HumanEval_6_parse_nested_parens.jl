""" Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    """
function parse_nested_parens(paren_string::String)::Vector{Int64} 
    paren_string = replace(paren_string, ' ', '')
    paren_string = replace(paren_string, ')(', ') (')
    paren_string = replace(paren_string, '()', '() ')
    paren_string = replace(paren_string, ')()', ') (')
    paren_string = replace(paren_string, '() ', '() ')
    paren_string = replace(paren_string, '()', '() ')
    paren_string = replace(paren_string, ') (', ') (')
    paren_string = replace(paren_string, ')() ', ') (')
    paren_string = replace(paren_string, ')()', ') (')
    paren_string = replace(paren_string, '() ', '() ')
    paren_string = replace(paren_string, '()', '() ')
    paren_string = replace(paren_string, ') (', ') (')
    paren_string = replace(paren_string, ')() ', ') (')
    paren_string = replace(paren_string, ')()', ') (')
    paren_string = replace(paren_string, '() ', '() ')
    paren_string = replace(paren_string, '()', '() ')
    paren_string = replace(paren_string, ') (', ') (')
    paren_string = replace(paren_string, ')() ', ') (')
    paren_string = replace(paren_string, ')()', ') (')
    paren_string = replace(paren_string, '() ', '() ')
    paren_string = replace(paren_string, '()', '() ')
    paren_string = replace(paren_string, ') (', ') (')
    paren_string = replace(paren_string, ')() ', ') (')
    paren_string = replace(paren_string, ')()', ') (')
    paren_string = replace(paren

using Test

@testset begin

candidate = parse_nested_parens;
	@test(candidate("(()()) ((())) () ((())()())") == [2, 3, 1, 3])
	@test(candidate("() (()) ((())) (((())))") == [1, 2, 3, 4])
	@test(candidate("(()(())((())))") == [4])
end
