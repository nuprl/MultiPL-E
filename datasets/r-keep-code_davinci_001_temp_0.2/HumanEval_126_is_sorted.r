# Given a list of numbers, return whether or not they are sorted
# in ascending order. If list has more than 1 duplicate of the same
# number, return False. Assume no negative numbers and only integers.
# Examples
# >>> is_sorted([5]) 
# True
# >>> is_sorted([1, 2, 3, 4, 5]) 
# True
# >>> is_sorted([1, 3, 2, 4, 5]) 
# False
# >>> is_sorted([1, 2, 3, 4, 5, 6]) 
# True
# >>> is_sorted([1, 2, 3, 4, 5, 6, 7]) 
# True
# >>> is_sorted([1, 3, 2, 4, 5, 6, 7]) 
# False
# >>> is_sorted([1, 2, 2, 3, 3, 4]) 
# True
# >>> is_sorted([1, 2, 2, 2, 3, 4]) 
# False
is_sorted <- function(lst) {
    for (i in 2:length(lst)) {
        if (lst[i] < lst[i-1]) {
            return(FALSE)
        }
    }
    return(TRUE)
}
is_sorted([5])
is_sorted([1, 2, 3, 4, 5])
is_sorted([1, 3, 2, 4, 5])
is_sorted([1, 2, 3, 4, 5, 6])
is_sorted([1, 2, 3, 4, 5, 6, 7])
is_sorted([1, 3, 2, 4, 5, 6, 7])
is_sorted([1, 2, 2, 3, 3, 4])
is_sorted([1, 2, 2, 2, 3, 4])


test_humaneval <- function() {
candidate <- is_sorted
    if(!identical(candidate(c(5)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 5)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 2, 4, 5)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 5, 6)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 5, 6, 7)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 2, 4, 5, 6, 7)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c()), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(3, 2, 1)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 2, 2, 3, 4)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 3, 3, 4)), FALSE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 2, 3, 3, 4)), TRUE)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4)), TRUE)){quit('no', 1)}
}
test_humaneval()