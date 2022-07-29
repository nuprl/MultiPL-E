# Find the shortest palindrome that begins with a supplied string.
-- Algorithm idea is simple:
-- - Find the longest postfix of supplied string that is a palindrome.
-- - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
-- >>> make_palindrome('')
-- ''
-- >>> make_palindrome('cat')
-- 'catac'
-- >>> make_palindrome('cata')
-- 'catac'
make_palindrome <- function(string)
{
    if (is.null(string))
    {
        return(NULL)
    }
    
    if (length(string) == 0)
    {
        return('')
    }
    
    if (length(string) == 1)
    {
        return(string)
    }
    
    if (length(string) == 2)
    {
        if (string[1] == string[2])
        {
            return(string)
        }
        else
        {
            return(paste(string, string[1], sep = ''))
        }
    }
    
    # Find the longest postfix of supplied string that is a palindrome.
    palindrome <- NULL
    for (i in 1:length(string))
    {
        if (is_palindrome(string[i:length(string)]))
        {
            palindrome <- string[i:length(string)]
        }
    }
    
    # Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    return(paste(string, reverse(palindrome), sep = ''))

test_humaneval <- function() {
candidate <- make_palindrome
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('x'), 'x')){quit('no', 1)}
    if(!identical(candidate('xyz'), 'xyzyx')){quit('no', 1)}
    if(!identical(candidate('xyx'), 'xyx')){quit('no', 1)}
    if(!identical(candidate('jerry'), 'jerryrrej')){quit('no', 1)}
}