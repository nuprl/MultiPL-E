# Your task is to implement a function that will simplify the expression
# x * n. The function returns True if x * n evaluates to a whole number and False
# otherwise. Both x and n, are string representation of a fraction, and have the following format,
# <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
# You can assume that x, and n are valid fractions, and do not have zero as denominator.
# >>> simplify("1/5", "5/1")
# True
# >>> simplify("1/6", "2/1")
# False
# >>> simplify("7/10", "10/2")
# False
simplify <- function(x, n) {
    # your code here
}


test_humaneval <- function() {
candidate <- simplify
    if(!identical(candidate('1/5', '5/1'), TRUE)){quit('no', 1)}
    if(!identical(candidate('1/6', '2/1'), FALSE)){quit('no', 1)}
    if(!identical(candidate('5/1', '3/1'), TRUE)){quit('no', 1)}
    if(!identical(candidate('7/10', '10/2'), FALSE)){quit('no', 1)}
    if(!identical(candidate('2/10', '50/10'), TRUE)){quit('no', 1)}
    if(!identical(candidate('7/2', '4/2'), TRUE)){quit('no', 1)}
    if(!identical(candidate('11/6', '6/1'), TRUE)){quit('no', 1)}
    if(!identical(candidate('2/3', '5/2'), FALSE)){quit('no', 1)}
    if(!identical(candidate('5/2', '3/5'), FALSE)){quit('no', 1)}
    if(!identical(candidate('2/4', '8/4'), TRUE)){quit('no', 1)}
    if(!identical(candidate('2/4', '4/2'), TRUE)){quit('no', 1)}
    if(!identical(candidate('1/5', '5/1'), TRUE)){quit('no', 1)}
    if(!identical(candidate('1/5', '1/5'), FALSE)){quit('no', 1)}
}
test_humaneval()