"""Change numerical base of input number x to base.
    return string representation after the conversion.
    base numbers are less than 10.
    >>> change_base(8, 3)
    '22'
    >>> change_base(8, 2)
    '1000'
    >>> change_base(7, 2)
    '111'
    """
function change_base(x::Int64, base::Int64)::String 
    if x == 0
        return "0"
    end
    if x < 0
        return "-" * change_base(-x, base)
    end
    return change_base(x // base, base) * string(x % base)
end
change_base(8, 3)
change_base(8, 2)
change_base(7, 2)

using Test

@testset begin

candidate = change_base;
	@test(candidate(8, 3) == "22")
	@test(candidate(9, 3) == "100")
	@test(candidate(234, 2) == "11101010")
	@test(candidate(16, 2) == "10000")
	@test(candidate(8, 2) == "1000")
	@test(candidate(7, 2) == "111")
	@test(candidate(2, 3) == "2")
	@test(candidate(3, 4) == "3")
	@test(candidate(4, 5) == "4")
	@test(candidate(5, 6) == "5")
	@test(candidate(6, 7) == "6")
	@test(candidate(7, 8) == "7")
end
