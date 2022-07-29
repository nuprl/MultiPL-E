"""
    Create a function that takes a value (string) representing a number
    and returns the closest integer to it. If the number is equidistant
    from two integers, round it away from zero.

    Examples
    >>> closest_integer("10")
    10
    >>> closest_integer("15.3")
    15

    Note:
    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.
    """
function closest_integer(value::String)::Int64 
    value = parse(Float64, value)
    if value > 0 
        if value - floor(value) < 0.5
            return floor(value)
        elseif value - floor(value) > 0.5
            return ceil(value)
        end
    elseif value < 0
        if value - floor(value) < 0.5
            return ceil(value)
        elseif value - floor(value) > 0.5
            return floor(value)
        end
    else
        return 0
    end
end

using Test

@testset begin

candidate = closest_integer;
	@test(candidate("10") == 10)
	@test(candidate("14.5") == 15)
	@test(candidate("-15.5") == -16)
	@test(candidate("15.3") == 15)
	@test(candidate("0") == 0)
end
