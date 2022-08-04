# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
circular_shift <- function(x, shift) {
    # If shift > number of digits, return digits reversed.
    if (shift > length(digits(x))) {
        return(reverse(digits(x)))
    }
    # Circular shift the digits of the integer x, shift the digits right by shift
    # and return the result as a string.
    return(paste(substr(digits(x), (length(digits(x)) - shift + 1), (length(digits(x)) - shift + length(digits(x))))
                 , substr(digits(x), 1, (length(digits(x)) - shift)), sep=""))
}


test_humaneval <- function() {
candidate <- circular_shift
    if(!identical(candidate(100, 2), '001')){quit('no', 1)}
    if(!identical(candidate(12, 2), '12')){quit('no', 1)}
    if(!identical(candidate(97, 8), '79')){quit('no', 1)}
    if(!identical(candidate(12, 1), '21')){quit('no', 1)}
    if(!identical(candidate(11, 101), '11')){quit('no', 1)}
}
test_humaneval()