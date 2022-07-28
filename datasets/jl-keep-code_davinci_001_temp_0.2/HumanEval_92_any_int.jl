"""
    Create a function that takes 3 numbers.
    Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    Returns false in any other cases.
    
    Examples
    any_int(5, 2, 7) ➞ True
    
    any_int(3, 2, 2) ➞ False

    any_int(3, -2, 1) ➞ True
    
    any_int(3.6, -2.2, 2) ➞ False
  

    
    """
function any_int(x::Float64, y::Float64, z::Float64)::Bool 
    if x%1 != 0 || y%1 != 0 || z%1 != 0
        return false
    end
    if x == y + z || y == x + z || z == x + y
        return true
    end
    return false
end

using Test

@testset begin

candidate = any_int;
	@test(candidate(2, 3, 1) == true)
	@test(candidate(2.5, 2, 3) == false)
	@test(candidate(1.5, 5, 3.5) == false)
	@test(candidate(2, 6, 2) == false)
	@test(candidate(4, 2, 2) == true)
	@test(candidate(2.2, 2.2, 2.2) == false)
	@test(candidate(-4, 6, 2) == true)
	@test(candidate(2, 1, 1) == true)
	@test(candidate(3, 4, 7) == true)
	@test(candidate(3.0, 4, 7) == false)
end
