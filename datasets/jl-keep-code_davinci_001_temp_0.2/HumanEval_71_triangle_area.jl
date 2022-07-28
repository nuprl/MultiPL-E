"""
    Given the lengths of the three sides of a triangle. Return the area of
    the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    Otherwise return -1
    Three sides make a valid triangle when the sum of any two sides is greater 
    than the third side.
    Example:
    triangle_area(3, 4, 5) == 6.00
    triangle_area(1, 2, 10) == -1
    """
function triangle_area(a::Int64, b::Int64, c::Int64)::Float64 
    if a+b>c && b+c>a && c+a>b
        return round((a+b+c)/2, digits=2)
    else
        return -1
    end
end

using Test

@testset begin

candidate = triangle_area;
	@test(candidate(3, 4, 5) == 6.0)
	@test(candidate(1, 2, 10) == -1)
	@test(candidate(4, 8, 5) == 8.18)
	@test(candidate(2, 2, 2) == 1.73)
	@test(candidate(1, 2, 3) == -1)
	@test(candidate(10, 5, 7) == 16.25)
	@test(candidate(2, 6, 3) == -1)
	@test(candidate(1, 1, 1) == 0.43)
	@test(candidate(2, 2, 10) == -1)
end
