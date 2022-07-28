"""Given a positive integer N, return the total sum of its digits in binary.
    
    Example
        For N = 1000, the sum of digits will be 1 the output should be "1".
        For N = 150, the sum of digits will be 6 the output should be "110".
        For N = 147, the sum of digits will be 12 the output should be "1100".
    
    Variables:
        @N integer
             Constraints: 0 ≤ N ≤ 10000.
    Output:
         a string of binary number
    """
function solve(N::Int64)::String 
    binary_number = convert(Int64, N)
    binary_number = string(binary_number, "")
    binary_number = split(binary_number, "")
    binary_number = map(x -> parse(Int64, x), binary_number)
    binary_number = sum(binary_number)
    return binary_number
end

using Test

@testset begin

candidate = solve;
	@test(candidate(1000) == "1")
	@test(candidate(150) == "110")
	@test(candidate(147) == "1100")
	@test(candidate(333) == "1001")
	@test(candidate(963) == "10010")
end
