# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
greatest_common_divisor <- function(a, b) {
    if (a == 0) {
        return(b)
    } else if (b == 0) {
        return(a)
    } else if (a == b) {
        return(a)
    } else if (a > b) {
        return(greatest_common_divisor(a - b, b))
    } else {
        return(greatest_common_divisor(a, b - a))
    }
}


test_humaneval <- function() {
candidate <- greatest_common_divisor
    if(!identical(candidate(3, 7), 1)){quit('no', 1)}
    if(!identical(candidate(10, 15), 5)){quit('no', 1)}
    if(!identical(candidate(49, 14), 7)){quit('no', 1)}
    if(!identical(candidate(144, 60), 12)){quit('no', 1)}
}
test_humaneval()