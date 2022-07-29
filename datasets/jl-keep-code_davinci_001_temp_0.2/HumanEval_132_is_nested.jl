"""
    Create a function that takes a string as input which contains only square brackets.
    The function should return True if and only if there is a valid subsequence of brackets 
    where at least one bracket in the subsequence is nested.

    is_nested('[[]]') ➞ True
    is_nested('[]]]]]]][[[[[]') ➞ False
    is_nested('[][]') ➞ False
    is_nested('[]') ➞ False
    is_nested('[[][]]') ➞ True
    is_nested('[[]][[') ➞ True
    """
function is_nested(string::String)::Bool 
    stack = []
    for i in string
        if i == "["
            push!(stack, i)
        elseif i == "]"
            if length(stack) == 0
                return false
            else
                pop!(stack)
            end
        end
    end
    if length(stack) == 0
        return true
    else
        return false
    end
end

using Test

@testset begin

candidate = is_nested;
	@test(candidate("[[]]") == true)
	@test(candidate("[]]]]]]][[[[[]") == false)
	@test(candidate("[][]") == false)
	@test(candidate("[]") == false)
	@test(candidate("[[[[]]]]") == true)
	@test(candidate("[]]]]]]]]]]") == false)
	@test(candidate("[][][[]]") == true)
	@test(candidate("[[]") == false)
	@test(candidate("[]]") == false)
	@test(candidate("[[]][[") == true)
	@test(candidate("[[][]]") == true)
	@test(candidate("") == false)
	@test(candidate("[[[[[[[[") == false)
	@test(candidate("]]]]]]]]") == false)
end
