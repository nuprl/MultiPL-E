# Given a list of numbers, return the sum of squares of the numbers
# in the list that are odd. Ignore numbers that are negative or not integers.
# double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
# double_the_difference([-1, -2, 0]) == 0
# double_the_difference([9, -2]) == 81
# double_the_difference([0]) == 0  
# If the input list is empty, return 0.
double_the_difference <- function(lst) {
    # Write your code here
    # You may use the following variables:
    # lst: the list of numbers
    # len: the length of the list
    # i: the index of the current element
    # elt: the current element
    # sum: the sum of the squares of the odd numbers in the list
    # You may use the function is.integer() to check if a value is an integer
    sum <- 0
    for (i in 1:length(lst)) {
        elt <- lst[i]
        if (is.integer(elt) && elt %% 2 == 1) {
            sum <- sum + elt^2
        }
    }
    return(sum)
}


test_humaneval <- function() {
candidate <- double_the_difference
    if(!identical(candidate(list()), 0)){quit('no', 1)}
    if(!identical(candidate(c(5.0, 4.0)), 25)){quit('no', 1)}
    if(!identical(candidate(c(0.1, 0.2, 0.3)), 0)){quit('no', 1)}
    if(!identical(candidate(c(-10.0, -20.0, -30.0)), 0)){quit('no', 1)}
    if(!identical(candidate(c(-1.0, -2.0, 8.0)), 0)){quit('no', 1)}
    if(!identical(candidate(c(0.2, 3.0, 5.0)), 34)){quit('no', 1)}
    if(!identical(candidate(c(-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0)), 165)){quit('no', 1)}
}
test_humaneval()