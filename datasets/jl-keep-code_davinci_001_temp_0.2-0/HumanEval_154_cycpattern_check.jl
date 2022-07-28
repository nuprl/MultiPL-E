"""You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    cycpattern_check("abcd","abd") => False
    cycpattern_check("hello","ell") => True
    cycpattern_check("whassup","psus") => False
    cycpattern_check("abab","baa") => True
    cycpattern_check("efef","eeff") => False
    cycpattern_check("himenss","simen") => True

    """
function cycpattern_check(a::String, b::String)::Bool 
    for i in 1:length(a)
        if b in a[i:end]
            return true
        end
    end
    return false
end

using Test

@testset begin

candidate = cycpattern_check;
	@test(candidate("xyzw", "xyw") == false)
	@test(candidate("yello", "ell") == true)
	@test(candidate("whattup", "ptut") == false)
	@test(candidate("efef", "fee") == true)
	@test(candidate("abab", "aabb") == false)
	@test(candidate("winemtt", "tinem") == true)
end
