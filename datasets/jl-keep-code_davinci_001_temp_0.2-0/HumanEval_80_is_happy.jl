"""You are given a string s.
    Your task is to check if the string is happy or not.
    A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    For example:
    is_happy(a) => False
    is_happy(aa) => False
    is_happy(abcd) => True
    is_happy(aabb) => False
    is_happy(adb) => True
    is_happy(xyy) => False
    """
function is_happy(s::String)::Bool 
    s = map(x -> parse(Int, x), collect(s))
    for i in 1:length(s)-2
        if s[i] == s[i+1] || s[i] == s[i+2] || s[i+1] == s[i+2]
            return false
        end
    end
    return true
end

using Test

@testset begin

candidate = is_happy;
	@test(candidate("a") == false)
	@test(candidate("aa") == false)
	@test(candidate("abcd") == true)
	@test(candidate("aabb") == false)
	@test(candidate("adb") == true)
	@test(candidate("xyy") == false)
	@test(candidate("iopaxpoi") == true)
	@test(candidate("iopaxioi") == false)
end
