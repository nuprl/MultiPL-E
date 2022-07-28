""" Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    """
function all_prefixes(string::String)::Vector{String} 
    prefixes = []
    for i in 1:length(string)
        push!(prefixes, string[1:i])
    end
    return prefixes
end

using Test

@testset begin

candidate = all_prefixes;
	@test(candidate("") == Vector{String}([]))
	@test(candidate("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"])
	@test(candidate("WWW") == ["W", "WW", "WWW"])
end
