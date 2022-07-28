"""Write a function vowels_count which takes a string representing
    a word as input and returns the number of vowels in the string.
    Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    vowel, but only when it is at the end of the given word.

    Example:
    >>> vowels_count("abcde")
    2
    >>> vowels_count("ACEDY")
    3
    """
function vowels_count(s::String)::Int64 
    count = 0
    for i in s
        if i == 'a' || i == 'e' || i == 'i' || i == 'o' || i == 'u'
            count += 1
        end
    end
    return count
end

using Test

@testset begin

candidate = vowels_count;
	@test(candidate("abcde") == 2)
	@test(candidate("Alone") == 3)
	@test(candidate("key") == 2)
	@test(candidate("bye") == 1)
	@test(candidate("keY") == 2)
	@test(candidate("bYe") == 1)
	@test(candidate("ACEDY") == 3)
end
