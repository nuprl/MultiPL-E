"""
    Given a positive integer, obtain its roman numeral equivalent as a string,
    and return it in lowercase.
    Restrictions: 1 <= num <= 1000

    Examples:
    >>> int_to_mini_roman(19) == 'xix'
    >>> int_to_mini_roman(152) == 'clii'
    >>> int_to_mini_roman(426) == 'cdxxvi'
    """
function int_to_mini_roman(number::Int64)::String 
    roman_numerals = Dict(
        4 => "iv",
        9 => "ix",
        40 => "xl",
        90 => "xc",
        400 => "cd",
        900 => "cm"
    )
    result = ""
    for (key, value) in roman_numerals
        if number >= key
            result *= value
            number -= key
        end
    end
    result *= int_to_roman(number)
    return result
end

using Test

@testset begin

candidate = int_to_mini_roman;
	@test(candidate(19) == "xix")
	@test(candidate(152) == "clii")
	@test(candidate(251) == "ccli")
	@test(candidate(426) == "cdxxvi")
	@test(candidate(500) == "d")
	@test(candidate(1) == "i")
	@test(candidate(4) == "iv")
	@test(candidate(43) == "xliii")
	@test(candidate(90) == "xc")
	@test(candidate(94) == "xciv")
	@test(candidate(532) == "dxxxii")
	@test(candidate(900) == "cm")
	@test(candidate(994) == "cmxciv")
	@test(candidate(1000) == "m")
end
