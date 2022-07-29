# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
strlen <- function(string) {
    return(length(string))
}

strlen('')
strlen('abc')


test_humaneval <- function() {
candidate <- strlen
    if(!identical(candidate(''), 0)){quit('no', 1)}
    if(!identical(candidate('x'), 1)){quit('no', 1)}
    if(!identical(candidate('asdasnakj'), 9)){quit('no', 1)}
}
test_humaneval()