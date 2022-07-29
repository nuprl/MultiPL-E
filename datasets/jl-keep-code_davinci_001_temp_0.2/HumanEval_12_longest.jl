""" Out of list of strings, return the longest one. Return the first one in case of multiple
    strings of the same length. Return None in case the input list is empty.
    >>> longest([])

    >>> longest(['a', 'b', 'c'])
    'a'
    >>> longest(['a', 'bb', 'ccc'])
    'ccc'
    """
function longest(strings::Vector{String})::Union{String, Nothing} 
    if isempty(strings)
        return nothing
    end
    longest_string = strings[1]
    for string in strings
        if length(string) > length(longest_string)
            longest_string = string
        end
    end
    return longest_string
end

using Test

@testset begin

candidate = longest;
	@test(candidate(Vector{String}([])) == nothing)
	@test(candidate(["x", "y", "z"]) == "x")
	@test(candidate(["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")
end
