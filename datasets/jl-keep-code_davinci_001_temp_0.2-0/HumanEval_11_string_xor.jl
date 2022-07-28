""" Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    """
function string_xor(a::String, b::String)::String 
    if length(a) != length(b)
        throw(DomainError(
            "Inputs must be of the same length to perform string_xor"))
    end
    return join([parse(Int, x) for x in bitstring(parse(Int, a)
                                                  .^ parse(Int, b))])
end

using Test

@testset begin

candidate = string_xor;
	@test(candidate("111000", "101010") == "010010")
	@test(candidate("1", "1") == "0")
	@test(candidate("0101", "0000") == "0101")
end
