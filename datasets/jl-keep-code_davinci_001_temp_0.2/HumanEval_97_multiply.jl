"""Complete the function that takes two integers and returns 
    the product of their unit digits.
    Assume the input is always valid.
    Examples:
    multiply(148, 412) should return 16.
    multiply(19, 28) should return 72.
    multiply(2020, 1851) should return 0.
    multiply(14,-15) should return 20.
    """
function multiply(a::Int64, b::Int64)::Int64 
    a_str = string(a)
    b_str = string(b)
    if length(a_str) == 1 && length(b_str) == 1
        return a*b
    elseif length(a_str) == 1 && length(b_str) > 1
        return a*b_str[end]*10^(length(b_str)-1) + multiply(a, b_str[1:end-1])
    elseif length(a_str) > 1 && length(b_str) == 1
        return a_str[end]*10^(length(a_str)-1) + multiply(a_str[1:end-1], b)
    else
        return a_str[end]*10^(length(a_str)-1) + multiply(a_str[1:end-1], b_str[end]*10^(length(b_str)-1) + multiply(a_str[1:end-1], b_str[1:end-1]))
    end
end
multiply(148, 412)
multiply(19, 28)
multiply(2020, 1851)
multiply(14,-15)


using Test

@testset begin

candidate = multiply;
	@test(candidate(148, 412) == 16)
	@test(candidate(19, 28) == 72)
	@test(candidate(2020, 1851) == 0)
	@test(candidate(14, -15) == 20)
	@test(candidate(76, 67) == 42)
	@test(candidate(17, 27) == 49)
	@test(candidate(0, 1) == 0)
	@test(candidate(0, 0) == 0)
end
