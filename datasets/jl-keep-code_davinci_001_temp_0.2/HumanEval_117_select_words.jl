"""Given a string s and a natural number n, you have been tasked to implement 
    a function that returns a list of all words from string s that contain exactly 
    n consonants, in order these words appear in the string s.
    If the string s is empty then the function should return an empty list.
    Note: you may assume the input string contains only letters and spaces.
    Examples:
    select_words("Mary had a little lamb", 4) ==> ["little"]
    select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    select_words("simple white space", 2) ==> []
    select_words("Hello world", 4) ==> ["world"]
    select_words("Uncle sam", 3) ==> ["Uncle"]
    """
function select_words(s::String, n::Int64)::Vector{String} 
    words = split(s, ' ')
    for word in words
        if length(word) == n
            push!(ans, word)
        end
    end
    return ans
end

using Test

@testset begin

candidate = select_words;
	@test(candidate("Mary had a little lamb", 4) == ["little"])
	@test(candidate("Mary had a little lamb", 3) == ["Mary", "lamb"])
	@test(candidate("simple white space", 2) == Vector{String}([]))
	@test(candidate("Hello world", 4) == ["world"])
	@test(candidate("Uncle sam", 3) == ["Uncle"])
	@test(candidate("", 4) == Vector{String}([]))
	@test(candidate("a b c d e f", 1) == ["b", "c", "d", "f"])
end
