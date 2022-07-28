"""Task
    We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    then check if the result string is palindrome.
    A string is called palindrome if it reads the same backward as forward.
    You should return a tuple containing the result string and True/False for the check.
    Example
    For s = "abcde", c = "ae", the result should be ('bcd',False)
    For s = "abcdef", c = "b"  the result should be ('acdef',False)
    For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    """
function reverse_delete(s::String, c::String)::Tuple{String, Bool} 
    s = filter(x -> !(x in c), s)
    return (s, ispalindrome(s))
end

using Test

@testset begin

candidate = reverse_delete;
	@test(candidate("abcde", "ae") == ("bcd", false))
	@test(candidate("abcdef", "b") == ("acdef", false))
	@test(candidate("abcdedcba", "ab") == ("cdedc", true))
	@test(candidate("dwik", "w") == ("dik", false))
	@test(candidate("a", "a") == ("", true))
	@test(candidate("abcdedcba", "") == ("abcdedcba", true))
	@test(candidate("abcdedcba", "v") == ("abcdedcba", true))
	@test(candidate("vabba", "v") == ("abba", true))
	@test(candidate("mamma", "mia") == ("", true))
end
