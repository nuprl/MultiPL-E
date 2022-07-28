"""
    remove_vowels is a function that takes string and returns string without vowels.
    >>> remove_vowels('')
    ''
    >>> remove_vowels('abcdef')
    'bcdf'
    >>> remove_vowels('aaaaa')
    ''
    >>> remove_vowels('aaBAA')
    'B'
    >>> remove_vowels('zbcd')
    'zbcd'
    """
function remove_vowels(text::String)::String 
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    for i in vowels
        text = replace(text, i, '')
    end
    return text
end

using Test

@testset begin

candidate = remove_vowels;
	@test(candidate("") == "")
	@test(candidate("abcdef
ghijklm") == "bcdf
ghjklm")
	@test(candidate("fedcba") == "fdcb")
	@test(candidate("eeeee") == "")
	@test(candidate("acBAA") == "cB")
	@test(candidate("EcBOO") == "cB")
	@test(candidate("ybcd") == "ybcd")
end
