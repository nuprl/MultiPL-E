"""
    Given a string s, count the number of uppercase vowels in even indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 0
    """
function count_upper(s::String)::Int64 
    count = 0
    for i in 1:2:length(s)
        if s[i] in "AEIOU"
            count += 1
        end
    end
    return count
end
count_upper("aBCdEf")
count_upper("abcdefg")
count_upper("dBBE")

using Test

@testset begin

candidate = count_upper;
	@test(candidate("aBCdEf") == 1)
	@test(candidate("abcdefg") == 0)
	@test(candidate("dBBE") == 0)
	@test(candidate("B") == 0)
	@test(candidate("U") == 1)
	@test(candidate("") == 0)
	@test(candidate("EEEE") == 2)
end
