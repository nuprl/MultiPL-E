""" Concatenate list of strings into a single string
    >>> concatenate([])
    ''
    >>> concatenate(['a', 'b', 'c'])
    'abc'
    """
function concatenate(strings::Vector{String})::String 
    return join(strings, "")
end

using Test

@testset begin

candidate = concatenate;
	@test(candidate(Vector{String}([])) == "")
	@test(candidate(["x", "y", "z"]) == "xyz")
	@test(candidate(["x", "y", "z", "w", "k"]) == "xyzwk")
end
