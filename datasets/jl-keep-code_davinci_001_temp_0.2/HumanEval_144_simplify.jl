"""Your task is to implement a function that will simplify the expression
    x * n. The function returns True if x * n evaluates to a whole number and False
    otherwise. Both x and n, are string representation of a fraction, and have the following format,
    <numerator>/<denominator> where both numerator and denominator are positive whole numbers.

    You can assume that x, and n are valid fractions, and do not have zero as denominator.

    simplify("1/5", "5/1") = True
    simplify("1/6", "2/1") = False
    simplify("7/10", "10/2") = False
    """
function simplify(x::String, n::String)::Bool 
    x_numerator, x_denominator = parse(Int, x)
    n_numerator, n_denominator = parse(Int, n)
    return (x_numerator * n_denominator) == (x_denominator * n_numerator)
end

using Test

@testset begin

candidate = simplify;
	@test(candidate("1/5", "5/1") == true)
	@test(candidate("1/6", "2/1") == false)
	@test(candidate("5/1", "3/1") == true)
	@test(candidate("7/10", "10/2") == false)
	@test(candidate("2/10", "50/10") == true)
	@test(candidate("7/2", "4/2") == true)
	@test(candidate("11/6", "6/1") == true)
	@test(candidate("2/3", "5/2") == false)
	@test(candidate("5/2", "3/5") == false)
	@test(candidate("2/4", "8/4") == true)
	@test(candidate("2/4", "4/2") == true)
	@test(candidate("1/5", "5/1") == true)
	@test(candidate("1/5", "1/5") == false)
end
