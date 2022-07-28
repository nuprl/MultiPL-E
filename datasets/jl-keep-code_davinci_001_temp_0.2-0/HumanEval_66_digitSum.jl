"""Task
    Write a function that takes a string as input and returns the sum of the upper characters only'
    ASCII codes.

    Examples:
        digitSum("") => 0
        digitSum("abAB") => 131
        digitSum("abcCd") => 67
        digitSum("helloE") => 69
        digitSum("woArBld") => 131
        digitSum("aAaaaXa") => 153
    """
function digitSum(s::String)::Int64 
    sum = 0
    for i in s
        if i in 'A':i<='Z'
            sum += i
        end
    end
    return sum
end
digitSum("")
digitSum("abAB")
digitSum("abcCd")
digitSum("helloE")
digitSum("woArBld")
digitSum("aAaaaXa")


using Test

@testset begin

candidate = digitSum;
	@test(candidate("") == 0)
	@test(candidate("abAB") == 131)
	@test(candidate("abcCd") == 67)
	@test(candidate("helloE") == 69)
	@test(candidate("woArBld") == 131)
	@test(candidate("aAaaaXa") == 153)
	@test(candidate(" How are yOu?") == 151)
	@test(candidate("You arE Very Smart") == 327)
end
