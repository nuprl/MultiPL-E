"""
    Write a function that takes an integer a and returns True 
    if this ingeger is a cube of some integer number.
    Note: you may assume the input is always valid.
    Examples:
    iscube(1) ==> True
    iscube(2) ==> False
    iscube(-1) ==> True
    iscube(64) ==> True
    iscube(0) ==> True
    iscube(180) ==> False
    """
function iscube(a::Int64)::Bool 
    if a == 0
        return true
    else
        x = round(abs(a)^(1/3))
        if x^3 == abs(a)
            return true
        else
            return false
        end
    end
end
iscube(1)
iscube(2)
iscube(-1)
iscube(64)
iscube(0)
iscube(180)

using Test

@testset begin

candidate = iscube;
	@test(candidate(1) == true)
	@test(candidate(2) == false)
	@test(candidate(-1) == true)
	@test(candidate(64) == true)
	@test(candidate(180) == false)
	@test(candidate(1000) == true)
	@test(candidate(0) == true)
	@test(candidate(1729) == false)
end
