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
make_palindrome <- function(string) {
    if (is.null(string) || length(string) == 0) {
        return('')
    }
    if (length(string) == 1) {
        return(string)
    }
    if (string == string[length(string):1]) {
        return(string)
    }
    # Find the longest palindromic postfix.
    postfix <- string[length(string):1]
    while (length(postfix) > 0) {
        if (postfix == postfix[length(postfix):1]) {
            break
        }
        postfix <- substr(postfix, 2, nchar(postfix))
    }
    # Append the reverse of the prefix that comes before the palindromic postfix.
    prefix <- string[1:(length(string) - length(postfix))]
    return(paste(prefix, reverse(postfix), sep = ''))

test_humaneval <- function() {
candidate <- make_palindrome
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('x'), 'x')){quit('no', 1)}
    if(!identical(candidate('xyz'), 'xyzyx')){quit('no', 1)}
    if(!identical(candidate('xyx'), 'xyx')){quit('no', 1)}
    if(!identical(candidate('jerry'), 'jerryrrej')){quit('no', 1)}
}