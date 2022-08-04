# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# >>> next_smallest([1, 2, 3, 4, 5])
# 2
# >>> next_smallest([5, 1, 4, 3, 2])
# 2
# >>> next_smallest([])
# None
# >>> next_smallest([1, 1])
# None
next_smallest <- function(lst) {
    if (length(lst) < 2) {
        return(None)
    }
    if (length(lst) == 2) {
        if (lst[1] > lst[2]) {
            return(lst[2])
        } else {
            return(None)
        }
    }
    if (lst[1] > lst[2]) {
        return(lst[2])
    }
    if (lst[1] < lst[2]) {
        return(next_smallest(lst[-1]))
    }
}
next_smallest([1, 2, 3, 4, 5])
next_smallest([5, 1, 4, 3, 2])
next_smallest([])
next_smallest([1, 1])


test_humaneval <- function() {
candidate <- next_smallest
    if(!identical(candidate(c(1, 2, 3, 4, 5)), 2)){quit('no', 1)}
    if(!identical(candidate(c(5, 1, 4, 3, 2)), 2)){quit('no', 1)}
    if(!identical(candidate(c()), NULL)){quit('no', 1)}
    if(!identical(candidate(c(1, 1)), NULL)){quit('no', 1)}
    if(!identical(candidate(c(1, 1, 1, 1, 0)), 1)){quit('no', 1)}
    if(!identical(candidate(c(1, 1)), NULL)){quit('no', 1)}
    if(!identical(candidate(c(-35, 34, 12, -45)), -35)){quit('no', 1)}
}
test_humaneval()