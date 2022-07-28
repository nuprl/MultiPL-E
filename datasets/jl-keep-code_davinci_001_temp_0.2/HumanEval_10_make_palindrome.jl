""" Find the shortest palindrome that begins with a supplied string.
    Algorithm idea is simple:
    - Find the longest postfix of supplied string that is a palindrome.
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome('')
    ''
    >>> make_palindrome('cat')
    'catac'
    >>> make_palindrome('cata')
    'catac'
    """
function make_palindrome(string::String)::String 
    if string == reverse(string)
        return string
    end
    palindrome = string
    while !is_palindrome(palindrome)
        palindrome = palindrome * 'a'
    end
    return palindrome
end

using Test

@testset begin

candidate = make_palindrome;
	@test(candidate("") == "")
	@test(candidate("x") == "x")
	@test(candidate("xyz") == "xyzyx")
	@test(candidate("xyx") == "xyx")
	@test(candidate("jerry") == "jerryrrej")
end
