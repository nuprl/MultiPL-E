# xs represent coefficients of a polynomial.
# xs[0] + xs[1] * x + xs[2] * x^2 + ....
# Return derivative of this polynomial in the same form.
# >>> derivative([3, 1, 2, 4, 5])
# [1, 4, 12, 20]
# >>> derivative([1, 2, 3])
# [2, 6]
derivative <- function(xs) {
    # your code here
}


test_humaneval <- function() {
candidate <- derivative
    if(!identical(candidate(list(3, 1, 2, 4, 5)), list(1, 4, 12, 20))){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3)), list(2, 6))){quit('no', 1)}
    if(!identical(candidate(list(3, 2, 1)), list(2, 2))){quit('no', 1)}
    if(!identical(candidate(list(3, 2, 1, 0, 4)), list(2, 2, 0, 16))){quit('no', 1)}
    if(!identical(candidate(list(1)), list())){quit('no', 1)}
}
test_humaneval()