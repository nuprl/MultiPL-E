# Find the shortest palindrome that begins with a supplied string.
# Algorithm idea is simple:
# - Find the longest postfix of supplied string that is a palindrome.
# - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
# >>> make_palindrome('')
# ''
# >>> make_palindrome('cat')
# 'catac'
# >>> make_palindrome('cata')
# 'catac'
make_palindrome <- function(string)
{
    if (is.null(string) || length(string) == 0)
    {
        return('')
    }
    
    # Find the longest palindromic postfix of the string.
    palindrome_postfix <- ''
    for (i in seq_along(string))
    {
        if (is_palindrome(string[i:length(string)]))
        {
            palindrome_postfix <- string[i:length(string)]
        }
    }
    
    # Find the longest prefix of the string that is a palindrome.
    palindrome_prefix <- ''
    for (i in seq_along(string))
    {
        if (is_palindrome(string[1:i]))
        {
            palindrome_prefix <- string[1:i]
        }
    }
    
    # Return the result.
    return(paste(palindrome_prefix, palindrome_postfix, sep = ''))

test_humaneval <- function() {
candidate <- make_palindrome
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('x'), 'x')){quit('no', 1)}
    if(!identical(candidate('xyz'), 'xyzyx')){quit('no', 1)}
    if(!identical(candidate('xyx'), 'xyx')){quit('no', 1)}
    if(!identical(candidate('jerry'), 'jerryrrej')){quit('no', 1)}
}