"""
    Create a function that returns True if the last character
    of a given string is an alphabetical character and is not
    a part of a word, and False otherwise.
    Note: "word" is a group of characters separated by space.

    Examples:
    check_if_last_char_is_a_letter("apple pie") ➞ False
    check_if_last_char_is_a_letter("apple pi e") ➞ True
    check_if_last_char_is_a_letter("apple pi e ") ➞ False
    check_if_last_char_is_a_letter("") ➞ False 
    """
function check_if_last_char_is_a_letter(txt::String)::Bool 
    if length(txt) == 0
        return false
    end
    if isalpha(txt[end])
        return true
    else
        return false
    end
end

using Test

@testset begin

candidate = check_if_last_char_is_a_letter;
	@test(candidate("apple") == false)
	@test(candidate("apple pi e") == true)
	@test(candidate("eeeee") == false)
	@test(candidate("A") == true)
	@test(candidate("Pumpkin pie ") == false)
	@test(candidate("Pumpkin pie 1") == false)
	@test(candidate("") == false)
	@test(candidate("eeeee e ") == false)
	@test(candidate("apple pie") == false)
	@test(candidate("apple pi e ") == false)
end
