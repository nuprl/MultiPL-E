""" Find how many times a given substring can be found in the original string. Count overlaping cases.
    >>> how_many_times('', 'a')
    0
    >>> how_many_times('aaa', 'a')
    3
    >>> how_many_times('aaaa', 'aa')
    3
    """
function how_many_times(string::String, substring::String)::Int64 
    if string == ""
        return 0
    elseif string[1] == substring[1]
        return 1 + how_many_times(string[2:end], substring)
    else
        return how_many_times(string[2:end], substring)
    end
end

using Test

@testset begin

candidate = how_many_times;
	@test(candidate("", "x") == 0)
	@test(candidate("xyxyxyx", "x") == 4)
	@test(candidate("cacacacac", "cac") == 4)
	@test(candidate("john doe", "john") == 1)
end
