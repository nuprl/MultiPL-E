"""Write a function that returns true if the given number is the multiplication of 3 prime numbers
    and false otherwise.
    Knowing that (a) is less then 100. 
    Example:
    is_multiply_prime(30) == True
    30 = 2 * 3 * 5
    """
function is_multiply_prime(a::Int64)::Bool 
    if a < 100
        for i in 1:a
            if isprime(i) == true && isprime(a/i) == true && isprime(a/(a/i)) == true
                return true
            end
        end
    else
        return false
    end
end
is_multiply_prime(30)
is_multiply_prime(97)
is_multiply_prime(100)
is_multiply_prime(101)
is_multiply_prime(102)
is_multiply_prime(103)
is_multiply_prime(104)
is_multiply_prime(105)
is_multiply_prime(106)
is_multiply_prime(107)
is_multiply_prime(108)
is_multiply_prime(109)
is_multiply_prime(110)
is_multiply_prime(111)
is_multiply_prime(112)
is_multiply_prime(113)
is_multiply_prime(114)
is_multiply_prime(115)
is_multiply_prime(116)
is_multiply_prime(117)
is_multiply_prime(118)
is_multiply_prime(119)
is_multiply_prime(120)
is_multiply_prime(121)
is_multiply_prime(122)
is_multiply_prime(123)
is_multiply_prime(124)
is_multiply_prime(125)
is_multiply_prime(126)
is_multiply_prime(127)
is_multiply_prime(128)
is_multiply_prime(129)
is_multiply_prime(130)
is_multiply_prime(131)
is_multiply_prime(132)
is_multiply_prime(133)
is_multiply_prime(134)
is_multiply_prime(135)
is_multiply_prime(136)
is_

using Test

@testset begin

candidate = is_multiply_prime;
	@test(candidate(5) == false)
	@test(candidate(30) == true)
	@test(candidate(8) == true)
	@test(candidate(10) == false)
	@test(candidate(125) == true)
	@test(candidate(105) == true)
	@test(candidate(126) == false)
	@test(candidate(729) == false)
	@test(candidate(891) == false)
	@test(candidate(1001) == true)
end
