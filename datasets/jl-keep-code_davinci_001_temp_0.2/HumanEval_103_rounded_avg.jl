"""You are given two positive integers n and m, and your task is to compute the
    average of the integers from n through m (including n and m). 
    Round the answer to the nearest integer and convert that to binary.
    If n is greater than m, return -1.
    Example:
    rounded_avg(1, 5) => "0b11"
    rounded_avg(7, 5) => -1
    rounded_avg(10, 20) => "0b1111"
    rounded_avg(20, 33) => "0b11010"
    """
function rounded_avg(n::Int64, m::Int64)::Union{String, Int64} 
    if n > m
        return -1
    else
        return convert(Int64, round(mean(n:m)))
    end
end

using Test

@testset begin

candidate = rounded_avg;
	@test(candidate(1, 5) == "0b11")
	@test(candidate(7, 13) == "0b1010")
	@test(candidate(964, 977) == "0b1111001010")
	@test(candidate(996, 997) == "0b1111100100")
	@test(candidate(560, 851) == "0b1011000010")
	@test(candidate(185, 546) == "0b101101110")
	@test(candidate(362, 496) == "0b110101101")
	@test(candidate(350, 902) == "0b1001110010")
	@test(candidate(197, 233) == "0b11010111")
	@test(candidate(7, 5) == -1)
	@test(candidate(5, 1) == -1)
	@test(candidate(5, 5) == "0b101")
end
