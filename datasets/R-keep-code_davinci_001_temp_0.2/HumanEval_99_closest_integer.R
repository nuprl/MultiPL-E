# Create a function that takes a value (string) representing a number
# and returns the closest integer to it. If the number is equidistant
# from two integers, round it away from zero.
# Examples
# >>> closest_integer("10")
# 10
# >>> closest_integer("15.3")
# 15
# Note:
# Rounding away from zero means that if the given number is equidistant
# from two integers, the one you should return is the one that is the
# farthest from zero. For example closest_integer("14.5") should
# return 15 and closest_integer("-14.5") should return -15.
closest_integer <- function(value) {
    value <- as.numeric(value)
    return(round(value))
}

closest_integer("10")
closest_integer("15.3")
closest_integer("-14.5")


test_humaneval <- function() {
candidate <- closest_integer
    if(!identical(candidate('10'), 10)){quit('no', 1)}
    if(!identical(candidate('14.5'), 15)){quit('no', 1)}
    if(!identical(candidate('-15.5'), -16)){quit('no', 1)}
    if(!identical(candidate('15.3'), 15)){quit('no', 1)}
    if(!identical(candidate('0'), 0)){quit('no', 1)}
}
test_humaneval()