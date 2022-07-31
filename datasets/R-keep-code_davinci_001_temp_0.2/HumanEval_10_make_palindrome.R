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
    if (string == '') {
        return('')
    }
    # Find the longest postfix of supplied string that is a palindrome.
    for (i in seq(length(string), 1, -1)) {
        if (is_palindrome(string[i:length(string)])) {
            break
        }
    }
    # Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    return(string[1:(i-1)] + reverse(string[i:length(string)]))
}


test_humaneval <- function() {
candidate <- make_palindrome
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('x'), 'x')){quit('no', 1)}
    if(!identical(candidate('xyz'), 'xyzyx')){quit('no', 1)}
    if(!identical(candidate('xyx'), 'xyx')){quit('no', 1)}
    if(!identical(candidate('jerry'), 'jerryrrej')){quit('no', 1)}
}
test_humaneval()