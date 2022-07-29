""" Filter an input list of strings only for ones that start with a given prefix.
    >>> filter_by_prefix([], 'a')
    []
    >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    ['abc', 'array']
    """
function filter_by_prefix(strings::Vector{String}, prefix::String)::Vector{String} 
    return filter(s -> startswith(s, prefix), strings)
end

using Test

@testset begin

candidate = filter_by_prefix;
	@test(candidate(Vector{String}([]), "john") == Vector{String}([]))
	@test(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"])
end
