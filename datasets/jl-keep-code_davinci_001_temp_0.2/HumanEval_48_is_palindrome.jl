"""
    Checks if given string is a palindrome
    >>> is_palindrome('')
    True
    >>> is_palindrome('aba')
    True
    >>> is_palindrome('aaaaa')
    True
    >>> is_palindrome('zbcd')
    False
    """
function is_palindrome(text::String)::Bool 
    return text == reverse(text)
end

using Test

@testset begin

candidate = is_palindrome;
	@test(candidate("") == true)
	@test(candidate("aba") == true)
	@test(candidate("aaaaa") == true)
	@test(candidate("zbcd") == false)
	@test(candidate("xywyx") == true)
	@test(candidate("xywyz") == false)
	@test(candidate("xywzx") == false)
end
