""" Filter given list of any python values only for integers
    >>> filter_integers(['a', 3.14, 5])
    [5]
    >>> filter_integers([1, 2, 3, 'abc', {}, []])
    [1, 2, 3]
    """
function filter_integers(values::Vector{Any})::Vector{Int64} 
    return [value for value in values if typeof(value) == Int64]
end

using Test

@testset begin

candidate = filter_integers;
	@test(candidate(Vector{Any}([])) == Vector{Int64}([]))
	@test(candidate([4, Dict(), [], 23.2, 9, "adasd"]) == [4, 9])
	@test(candidate([3, "c", 3, 3, "a", "b"]) == [3, 3, 3])
end
