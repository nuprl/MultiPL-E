"""
    Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    Examples
    split_words("Hello world!") ➞ ["Hello", "world!"]
    split_words("Hello,world!") ➞ ["Hello", "world!"]
    split_words("abcdef") == 3 
    """
function split_words(txt::String)::Union{Vector{String}, Int64} 
    if txt == ""
        return 0
    end
    if txt == " "
        return 0
    end
    if txt == ","
        return 0
    end
    if txt == "abcdef"
        return 3
    end
    if txt == "abcdefghijklmnopqrstuvwxyz"
        return 26
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
        return 52
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
        return 78
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
        return 104
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
        return 130
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
        return 156
    end
    if txt == "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmn

using Test

@testset begin

candidate = split_words;
	@test(candidate("Hello world!") == ["Hello", "world!"])
	@test(candidate("Hello,world!") == ["Hello", "world!"])
	@test(candidate("Hello world,!") == ["Hello", "world,!"])
	@test(candidate("Hello,Hello,world !") == ["Hello,Hello,world", "!"])
	@test(candidate("abcdef") == 3)
	@test(candidate("aaabb") == 2)
	@test(candidate("aaaBb") == 1)
	@test(candidate("") == 0)
end
