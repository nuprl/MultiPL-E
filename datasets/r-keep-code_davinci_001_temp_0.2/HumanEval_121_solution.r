# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
solution <- function(lst) {
    sum <- 0
    for (i in 1:length(lst)) {
        if (i %% 2 == 0) {
            if (lst[i] %% 2 == 1) {
                sum <- sum + lst[i]
            }
        }
    }
    return(sum)
}


test_humaneval <- function() {
candidate <- solution
    if(!identical(candidate(c(5, 8, 7, 1)), 12)){quit('no', 1)}
    if(!identical(candidate(c(3, 3, 3, 3, 3)), 9)){quit('no', 1)}
    if(!identical(candidate(c(30, 13, 24, 321)), 0)){quit('no', 1)}
    if(!identical(candidate(c(5, 9)), 5)){quit('no', 1)}
    if(!identical(candidate(c(2, 4, 8)), 0)){quit('no', 1)}
    if(!identical(candidate(c(30, 13, 23, 32)), 23)){quit('no', 1)}
    if(!identical(candidate(c(3, 13, 2, 9)), 3)){quit('no', 1)}
}
test_humaneval()