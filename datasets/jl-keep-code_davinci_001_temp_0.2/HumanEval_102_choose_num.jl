"""This function takes two positive numbers x and y and returns the
    biggest even integer number that is in the range [x, y] inclusive. If 
    there's no such number, then the function should return -1.

    For example:
    choose_num(12, 15) = 14
    choose_num(13, 12) = -1
    """
function choose_num(x::Int64, y::Int64)::Int64 
    if x > y
        return -1
    else
        for i in x:y
            if i % 2 == 0
                return i
            end
        end
    end
end
choose_num(12, 15)
choose_num(13, 12)
choose_num(12, 12)
choose_num(12, 10)
choose_num(12, 14)
choose_num(12, 11)
choose_num(12, 9)
choose_num(12, 8)
choose_num(12, 7)
choose_num(12, 6)
choose_num(12, 5)
choose_num(12, 4)
choose_num(12, 3)
choose_num(12, 2)
choose_num(12, 1)
choose_num(12, 0)
choose_num(11, 0)
choose_num(10, 0)
choose_num(9, 0)
choose_num(8, 0)
choose_num(7, 0)
choose_num(6, 0)
choose_num(5, 0)
choose_num(4, 0)
choose_num(3, 0)
choose_num(2, 0)
choose_num(1, 0)
choose_num(0, 0)
choose_num(0, 1)
choose_num(0, 2)
choose_num(0, 3)
choose_num(0, 4)
choose_num(0, 5)
choose_num(0, 6)
choose_num(0, 7)
choose_num(0, 8)
choose_num(0, 9)
choose_num(0, 10)
choose_num(0, 11)
choose_num(0, 12)
choose_num(0, 13)
choose_num(0, 14)
choose_num(0, 15)
choose_num(0, 16)
choose_num(0, 17)
choose_num

using Test

@testset begin

candidate = choose_num;
	@test(candidate(12, 15) == 14)
	@test(candidate(13, 12) == -1)
	@test(candidate(33, 12354) == 12354)
	@test(candidate(5234, 5233) == -1)
	@test(candidate(6, 29) == 28)
	@test(candidate(27, 10) == -1)
	@test(candidate(7, 7) == -1)
	@test(candidate(546, 546) == 546)
end
