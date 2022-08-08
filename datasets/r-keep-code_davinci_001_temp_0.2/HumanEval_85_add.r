# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
add <- function(lst) {
    add <- 0
    for (i in 1:length(lst)) {
        if (lst[i] %% 2 == 0 & i %% 2 != 0) {
            add <- add + lst[i]
        }
    }
    return(add)
}
add([4, 2, 6, 7])


test_humaneval <- function() {
candidate <- add
    if(!identical(candidate(c(4, 88)), 88)){quit('no', 1)}
    if(!identical(candidate(c(4, 5, 6, 7, 2, 122)), 122)){quit('no', 1)}
    if(!identical(candidate(c(4, 0, 6, 7)), 0)){quit('no', 1)}
    if(!identical(candidate(c(4, 4, 6, 8)), 12)){quit('no', 1)}
}
test_humaneval()