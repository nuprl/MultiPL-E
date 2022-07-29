"""Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    Example
    is_equal_to_sum_even(4) == False
    is_equal_to_sum_even(6) == False
    is_equal_to_sum_even(8) == True
    """
function is_equal_to_sum_even(n::Int64)::Bool 
    if n%2 != 0
        return false
    end
    for i in 1:n
        for j in 1:n
            for k in 1:n
                for l in 1:n
                    if i+j+k+l == n && i%2 == 0 && j%2 == 0 && k%2 == 0 && l%2 == 0
                        return true
                    end
                end
            end
        end
    end
    return false
end
is_equal_to_sum_even(4)
is_equal_to_sum_even(6)
is_equal_to_sum_even(8)

using Test

@testset begin

candidate = is_equal_to_sum_even;
	@test(candidate(4) == false)
	@test(candidate(6) == false)
	@test(candidate(8) == true)
	@test(candidate(10) == true)
	@test(candidate(11) == false)
	@test(candidate(12) == true)
	@test(candidate(13) == false)
	@test(candidate(16) == true)
end
