"""
    Check if two words have the same characters.
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    True
    >>> same_chars('abcd', 'dddddddabc')
    True
    >>> same_chars('dddddddabc', 'abcd')
    True
    >>> same_chars('eabcd', 'dddddddabc')
    False
    >>> same_chars('abcd', 'dddddddabce')
    False
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    False
    """
function same_chars(s0::String, s1::String)::Bool 
    if length(s0) != length(s1):
        return false
    else:
        for i in s0
            if !(i in s1)
                return false
        end
    end
    return true
end

using Test

@testset begin

candidate = same_chars;
	@test(candidate("eabcdzzzz", "dddzzzzzzzddeddabc") == true)
	@test(candidate("abcd", "dddddddabc") == true)
	@test(candidate("dddddddabc", "abcd") == true)
	@test(candidate("eabcd", "dddddddabc") == false)
	@test(candidate("abcd", "dddddddabcf") == false)
	@test(candidate("eabcdzzzz", "dddzzzzzzzddddabc") == false)
	@test(candidate("aabb", "aaccc") == false)
end
