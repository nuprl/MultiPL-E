"""Create a function encrypt that takes a string as an argument and
    returns a string encrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such that the letters 
    shift down by two multiplied to two places.
    For example:
    encrypt('hi') returns 'lm'
    encrypt('asdfghjkl') returns 'ewhjklnop'
    encrypt('gf') returns 'kj'
    encrypt('et') returns 'ix'
    """
function encrypt(s::String)::String 
    s = lowercase(s)
    s = replace(s, "a" => "c")
    s = replace(s, "b" => "d")
    s = replace(s, "c" => "e")
    s = replace(s, "d" => "f")
    s = replace(s, "e" => "g")
    s = replace(s, "f" => "h")
    s = replace(s, "g" => "i")
    s = replace(s, "h" => "j")
    s = replace(s, "i" => "k")
    s = replace(s, "j" => "l")
    s = replace(s, "k" => "m")
    s = replace(s, "l" => "n")
    s = replace(s, "m" => "o")
    s = replace(s, "n" => "p")
    s = replace(s, "o" => "q")
    s = replace(s, "p" => "r")
    s = replace(s, "q" => "s")
    s = replace(s, "r" => "t")
    s = replace(s, "s" => "u")
    s = replace(s, "t" => "v")
    s = replace(s, "u" => "w")
    s = replace(s, "v" => "x")
    s = replace(s, "w" => "y")
    s = replace(s, "x" => "z")
    s = replace(s, "y" => "a")
    s = replace(s, "z" => "b")
    return s
end

using Test

@testset begin

candidate = encrypt;
	@test(candidate("hi") == "lm")
	@test(candidate("asdfghjkl") == "ewhjklnop")
	@test(candidate("gf") == "kj")
	@test(candidate("et") == "ix")
	@test(candidate("faewfawefaewg") == "jeiajeaijeiak")
	@test(candidate("hellomyfriend") == "lippsqcjvmirh")
	@test(candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") == "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")
	@test(candidate("a") == "e")
end
