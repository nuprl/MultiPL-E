""" brackets is a string of "<" and ">".
    return True if every opening bracket has a corresponding closing bracket.

    >>> correct_bracketing("<")
    False
    >>> correct_bracketing("<>")
    True
    >>> correct_bracketing("<<><>>")
    True
    >>> correct_bracketing("><<>")
    False
    """
function correct_bracketing(brackets::String)::Bool 
    stack = []
    for bracket in brackets
        if bracket == "<"
            push!(stack, bracket)
        elseif bracket == ">"
            if isempty(stack)
                return false
            else
                pop!(stack)
            end
        end
    end
    return isempty(stack)
end

using Test

@testset begin

candidate = correct_bracketing;
	@test(candidate("<>") == true)
	@test(candidate("<<><>>") == true)
	@test(candidate("<><><<><>><>") == true)
	@test(candidate("<><><<<><><>><>><<><><<>>>") == true)
	@test(candidate("<<<><>>>>") == false)
	@test(candidate("><<>") == false)
	@test(candidate("<") == false)
	@test(candidate("<<<<") == false)
	@test(candidate(">") == false)
	@test(candidate("<<>") == false)
	@test(candidate("<><><<><>><>><<>") == false)
	@test(candidate("<><><<><>><>>><>") == false)
end
