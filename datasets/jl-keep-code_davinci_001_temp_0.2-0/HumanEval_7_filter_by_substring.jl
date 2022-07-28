""" Filter an input list of strings only for ones that contain given substring
    >>> filter_by_substring([], 'a')
    []
    >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    ['abc', 'bacd', 'array']
    """
function filter_by_substring(strings::Vector{String}, substring::String)::Vector{String} 
    return filter(x -> occursin(substring, x), strings)
end

using Test

@testset begin

candidate = filter_by_substring;
	@test(candidate(Vector{String}([]), "john") == Vector{String}([]))
	@test(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"])
	@test(candidate(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx") == ["xxx", "aaaxxy", "xxxAAA", "xxx"])
	@test(candidate(["grunt", "trumpet", "prune", "gruesome"], "run") == ["grunt", "prune"])
end
