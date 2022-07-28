""" Given a positive floating point number, it can be decomposed into
    and integer part (largest integer smaller than given number) and decimals
    (leftover part always smaller than 1).

    Return the decimal part of the number.
    >>> truncate_number(3.5)
    0.5
    """
function truncate_number(number::Float64)::Float64 
    return number - floor(number)
end

using Test

@testset begin

candidate = truncate_number;
	@test(candidate(3.5) == 0.5)
	@test(candidate(1.25) == 0.25)
	@test(candidate(123.0) == 0.0)
end
