""" Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    """
function strlen(string::String)::Int64 
    len = 0
    for i in string
        len += 1
    end
    return len
end
strlen("")
strlen("abc")

using Test

@testset begin

candidate = strlen;
	@test(candidate("") == 0)
	@test(candidate("x") == 1)
	@test(candidate("asdasnakj") == 9)
end
