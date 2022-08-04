# Checks if given string is a palindrome
# >>> is_palindrome('')
# True
# >>> is_palindrome('aba')
# True
# >>> is_palindrome('aaaaa')
# True
# >>> is_palindrome('zbcd')
# False
is_palindrome <- function(text) {
    if (length(text) <= 1) {
        return(TRUE)
    } else {
        if (substr(text, 1, 1) == substr(text, -1, 1)) {
            return(is_palindrome(substr(text, 2, -1)))
        } else {
            return(FALSE)
        }
    }
}


test_humaneval <- function() {
candidate <- is_palindrome
    if(!identical(candidate(''), TRUE)){quit('no', 1)}
    if(!identical(candidate('aba'), TRUE)){quit('no', 1)}
    if(!identical(candidate('aaaaa'), TRUE)){quit('no', 1)}
    if(!identical(candidate('zbcd'), FALSE)){quit('no', 1)}
    if(!identical(candidate('xywyx'), TRUE)){quit('no', 1)}
    if(!identical(candidate('xywyz'), FALSE)){quit('no', 1)}
    if(!identical(candidate('xywzx'), FALSE)){quit('no', 1)}
}
test_humaneval()