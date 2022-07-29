# Checks if given string is a palindrome
-- >>> is_palindrome('')
-- True
-- >>> is_palindrome('aba')
-- True
-- >>> is_palindrome('aaaaa')
-- True
-- >>> is_palindrome('zbcd')
-- False
is_palindrome <- function(text)
{
    text <- tolower(text)
    text <- gsub('[^a-z]', '', text)
    return(text == rev(text))

test_humaneval <- function() {
candidate <- is_palindrome
    if(!identical(candidate(''), true)){quit('no', 1)}
    if(!identical(candidate('aba'), true)){quit('no', 1)}
    if(!identical(candidate('aaaaa'), true)){quit('no', 1)}
    if(!identical(candidate('zbcd'), false)){quit('no', 1)}
    if(!identical(candidate('xywyx'), true)){quit('no', 1)}
    if(!identical(candidate('xywyz'), false)){quit('no', 1)}
    if(!identical(candidate('xywzx'), false)){quit('no', 1)}
}