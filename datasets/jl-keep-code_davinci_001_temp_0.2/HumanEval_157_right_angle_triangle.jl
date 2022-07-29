"""
    Given the lengths of the three sides of a triangle. Return True if the three
    sides form a right-angled triangle, False otherwise.
    A right-angled triangle is a triangle in which one angle is right angle or 
    90 degree.
    Example:
    right_angle_triangle(3, 4, 5) == True
    right_angle_triangle(1, 2, 3) == False
    """
function right_angle_triangle(a::Int64, b::Int64, c::Int64)::Bool 
    if a^2 + b^2 == c^2
        return true
    elseif b^2 + c^2 == a^2
        return true
    elseif c^2 + a^2 == b^2
        return true
    else
        return false
    end
end
right_angle_triangle(3, 4, 5)
right_angle_triangle(1, 2, 3)

using Test

@testset begin

candidate = right_angle_triangle;
	@test(candidate(3, 4, 5) == true)
	@test(candidate(1, 2, 3) == false)
	@test(candidate(10, 6, 8) == true)
	@test(candidate(2, 2, 2) == false)
	@test(candidate(7, 24, 25) == true)
	@test(candidate(10, 5, 7) == false)
	@test(candidate(5, 12, 13) == true)
	@test(candidate(15, 8, 17) == true)
	@test(candidate(48, 55, 73) == true)
	@test(candidate(1, 1, 1) == false)
	@test(candidate(2, 2, 10) == false)
end
