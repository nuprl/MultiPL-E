# You are given a list of numbers.
# You need to return the sum of squared numbers in the given list,
# round each element in the list to the upper int(Ceiling) first.
# Examples:
# For lst = [1,2,3] the output should be 14
# For lst = [1,4,9] the output should be 98
# For lst = [1,3,5,7] the output should be 84
# For lst = [1.4,4.2,0] the output should be 29
# For lst = [-2.4,1,1] the output should be 6
sum_squares <- function(lst) {
    # your code here
    return(sum(lapply(lst, ceiling)^2))
}


test_humaneval <- function() {
candidate <- sum_squares
    if(!identical(candidate(list(1.0, 2.0, 3.0)), 14)){quit('no', 1)}
    if(!identical(candidate(list(1.0, 2.0, 3.0)), 14)){quit('no', 1)}
    if(!identical(candidate(list(1.0, 3.0, 5.0, 7.0)), 84)){quit('no', 1)}
    if(!identical(candidate(list(1.4, 4.2, 0.0)), 29)){quit('no', 1)}
    if(!identical(candidate(list(-2.4, 1.0, 1.0)), 6)){quit('no', 1)}
    if(!identical(candidate(list(100.0, 1.0, 15.0, 2.0)), 10230)){quit('no', 1)}
    if(!identical(candidate(list(10000.0, 10000.0)), 200000000)){quit('no', 1)}
    if(!identical(candidate(list(-1.4, 4.6, 6.3)), 75)){quit('no', 1)}
    if(!identical(candidate(list(-1.4, 17.9, 18.9, 19.9)), 1086)){quit('no', 1)}
    if(!identical(candidate(list(0.0)), 0)){quit('no', 1)}
    if(!identical(candidate(list(-1.0)), 1)){quit('no', 1)}
    if(!identical(candidate(list(-1.0, 1.0, 0.0)), 2)){quit('no', 1)}
}
test_humaneval()