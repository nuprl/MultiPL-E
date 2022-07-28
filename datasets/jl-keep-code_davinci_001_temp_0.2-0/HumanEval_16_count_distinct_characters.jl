""" Given a string, find out how many distinct characters (regardless of case) does it consist of
    >>> count_distinct_characters('xyzXYZ')
    3
    >>> count_distinct_characters('Jerry')
    4
    """
function count_distinct_characters(string::String)::Int64 
    count = 0
    for i in 1:length(string)
        if !(string[i] in string[1:i-1])
            count += 1
        end
    end
    return count
end

using Test

@testset begin

candidate = count_distinct_characters;
	@test(candidate("") == 0)
	@test(candidate("abcde") == 5)
	@test(candidate("abcdecadeCADE") == 5)
	@test(candidate("aaaaAAAAaaaa") == 1)
	@test(candidate("Jerry jERRY JeRRRY") == 5)
end
