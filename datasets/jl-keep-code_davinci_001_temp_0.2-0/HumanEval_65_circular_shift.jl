"""Circular shift the digits of the integer x, shift the digits right by shift
    and return the result as a string.
    If shift > number of digits, return digits reversed.
    >>> circular_shift(12, 1)
    "21"
    >>> circular_shift(12, 2)
    "12"
    """
function circular_shift(x::Int64, shift::Int64)::String 
    if shift > length(digits(x))
        return reverse(digits(x))
    else
        return join(digits(x)[shift+1:end] ,digits(x)[1:shift])
    end
end
circular_shift(12,1)
circular_shift(12,2)
circular_shift(12,3)
circular_shift(12,4)
circular_shift(12,5)
circular_shift(12,6)
circular_shift(12,7)
circular_shift(12,8)
circular_shift(12,9)
circular_shift(12,10)
circular_shift(12,11)
circular_shift(12,12)
circular_shift(12,13)
circular_shift(12,14)
circular_shift(12,15)
circular_shift(12,16)
circular_shift(12,17)
circular_shift(12,18)
circular_shift(12,19)
circular_shift(12,20)
circular_shift(12,21)
circular_shift(12,22)
circular_shift(12,23)
circular_shift(12,24)
circular_shift(12,25)
circular_shift(12,26)
circular_shift(12,27)
circular_shift(12,28)
circular_shift(12,29)
circular_shift(12,30)
circular_shift(12,31)
circular_shift(12,32)
circular_shift(12,33)
circular_shift(12,34)
circular_shift(12,35)
circular_shift(12,36)
circular_shift(12,37)
circular_shift(12,38)
circular_shift(12,39)
circular_shift(12,40)
circular_shift(12,41)
circular_shift(12,42)
circular_shift(12,43)
circular_shift(12,44)
circular_

using Test

@testset begin

candidate = circular_shift;
	@test(candidate(100, 2) == "001")
	@test(candidate(12, 2) == "12")
	@test(candidate(97, 8) == "79")
	@test(candidate(12, 1) == "21")
	@test(candidate(11, 101) == "11")
end
