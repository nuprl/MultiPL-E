# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
specialFilter <- function(nums) {
    return(length(nums[nums > 10 & nums%%10 == 5 & nums%%10 == 7]))
}


test_humaneval <- function() {
candidate <- specialFilter
    if(!identical(candidate(c(5, -2, 1, -5)), 0)){quit('no', 1)}
    if(!identical(candidate(c(15, -73, 14, -15)), 1)){quit('no', 1)}
    if(!identical(candidate(c(33, -2, -3, 45, 21, 109)), 2)){quit('no', 1)}
    if(!identical(candidate(c(43, -12, 93, 125, 121, 109)), 4)){quit('no', 1)}
    if(!identical(candidate(c(71, -2, -33, 75, 21, 19)), 3)){quit('no', 1)}
    if(!identical(candidate(c(1)), 0)){quit('no', 1)}
    if(!identical(candidate(list()), 0)){quit('no', 1)}
}
test_humaneval()