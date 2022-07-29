# For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
# Empty sum should be equal to 0 and empty product should be equal to 1.
# >>> sum_product([])
# (0, 1)
# >>> sum_product([1, 2, 3, 4])
# (10, 24)
sum_product <- function(numbers) {
    if (length(numbers) == 0) {
        return(c(0, 1))
    }
    sum <- 0
    product <- 1
    for (i in numbers) {
        sum <- sum + i
        product <- product * i
    }
    return(c(sum, product))
}
sum_product([])
sum_product([1, 2, 3, 4])


test_humaneval <- function() {
candidate <- sum_product
    if(!identical(candidate(c()), c(0, 1))){quit('no', 1)}
    if(!identical(candidate(c(1, 1, 1)), c(3, 1))){quit('no', 1)}
    if(!identical(candidate(c(100, 0)), c(100, 0))){quit('no', 1)}
    if(!identical(candidate(c(3, 5, 7)), c(15, 105))){quit('no', 1)}
    if(!identical(candidate(c(10)), c(10, 10))){quit('no', 1)}
}
test_humaneval()