""" Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    >>> string_sequence(0)
    '0'
    >>> string_sequence(5)
    '0 1 2 3 4 5'
    """
function string_sequence(n::Int64)::String 
    s = ""
    for i in 0:n
        s *= string(i) * " "
    end
    return s
end
string_sequence(5)

using Test

@testset begin

candidate = string_sequence;
	@test(candidate(0) == "0")
	@test(candidate(3) == "0 1 2 3")
	@test(candidate(10) == "0 1 2 3 4 5 6 7 8 9 10")
end
