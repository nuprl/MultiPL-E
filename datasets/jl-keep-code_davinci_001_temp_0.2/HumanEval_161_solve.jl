"""You are given a string s.
    if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    otherwise keep it as it is.
    If the string contains no letters, reverse the string.
    The function should return the resulted string.
    Examples
    solve("1234") = "4321"
    solve("ab") = "AB"
    solve("#a@C") = "#A@c"
    """
function solve(s::String)::String 
    s_new = ""
    for i in s
        if isletter(i)
            if islowercase(i)
                s_new *= uppercase(i)
            else
                s_new *= lowercase(i)
            end
        else
            s_new *= i
        end
    end
    return s_new
end
solve("1234")
solve("ab")
solve("#a@C")
solve("#a@C") == "#A@c"
solve("#a@C") == "#a@c"


using Test

@testset begin

candidate = solve;
	@test(candidate("AsDf") == "aSdF")
	@test(candidate("1234") == "4321")
	@test(candidate("ab") == "AB")
	@test(candidate("#a@C") == "#A@c")
	@test(candidate("#AsdfW^45") == "#aSDFw^45")
	@test(candidate("#6@2") == "2@6#")
	@test(candidate("#$a^D") == "#$A^d")
	@test(candidate("#ccc") == "#CCC")
end
