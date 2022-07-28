"""Given an integer. return a tuple that has the number of even and odd digits respectively.

     Example:
        even_odd_count(-12) ==> (1, 1)
        even_odd_count(123) ==> (1, 2)
    """
function even_odd_count(num::Int64)::Tuple{Int64, Int64} 
    even_count = 0
    odd_count = 0
    for i in num
        if i % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end
    return (even_count, odd_count)
end

using Test

@testset begin

candidate = even_odd_count;
	@test(candidate(7) == (0, 1))
	@test(candidate(-78) == (1, 1))
	@test(candidate(3452) == (2, 2))
	@test(candidate(346211) == (3, 3))
	@test(candidate(-345821) == (3, 3))
	@test(candidate(-2) == (1, 0))
	@test(candidate(-45347) == (2, 3))
	@test(candidate(0) == (1, 0))
end
