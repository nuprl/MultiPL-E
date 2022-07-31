# Create a function that returns a tuple (a, b), where 'a' is
# the largest of negative integers, and 'b' is the smallest
# of positive integers in a list.
# If there is no negative or positive integers, return them as None.
# Examples:
# largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
# largest_smallest_integers([]) == (None, None)
# largest_smallest_integers([0]) == (None, None)
largest_smallest_integers <- function(lst) {
    if (length(lst) == 0) {
        return (c(None, None))
    }
    if (length(lst) == 1) {
        return (c(None, lst[1]))
    }
    if (length(lst) == 2) {
        if (lst[1] > 0 && lst[2] < 0) {
            return (c(lst[2], lst[1]))
        } else if (lst[1] < 0 && lst[2] > 0) {
            return (c(lst[1], lst[2]))
        } else {
            return (c(None, None))
        }
    }
    if (all(lst > 0)) {
        return (c(None, lst[1]))
    }
    if (all(lst < 0)) {
        return (c(lst[1], None))
    }
    if (any(lst > 0)) {
        if (any(lst < 0)) {
            return (c(min(lst[lst < 0]), max(lst[lst > 0])))
        }
    }
    return (c(None, None))
}


test_humaneval <- function() {
candidate <- largest_smallest_integers
    if(!identical(candidate(list(2, 4, 1, 3, 5, 7)), list(NULL, 1))){quit('no', 1)}
    if(!identical(candidate(list(2, 4, 1, 3, 5, 7, 0)), list(NULL, 1))){quit('no', 1)}
    if(!identical(candidate(list(1, 3, 2, 4, 5, 6, -2)), list(-2, 1))){quit('no', 1)}
    if(!identical(candidate(list(4, 5, 3, 6, 2, 7, -7)), list(-7, 2))){quit('no', 1)}
    if(!identical(candidate(list(7, 3, 8, 4, 9, 2, 5, -9)), list(-9, 2))){quit('no', 1)}
    if(!identical(candidate(list()), list(NULL, NULL))){quit('no', 1)}
    if(!identical(candidate(list(0)), list(NULL, NULL))){quit('no', 1)}
    if(!identical(candidate(list(-1, -3, -5, -6)), list(-1, NULL))){quit('no', 1)}
    if(!identical(candidate(list(-1, -3, -5, -6, 0)), list(-1, NULL))){quit('no', 1)}
    if(!identical(candidate(list(-6, -4, -4, -3, 1)), list(-3, 1))){quit('no', 1)}
    if(!identical(candidate(list(-6, -4, -4, -3, -100, 1)), list(-3, 1))){quit('no', 1)}
}
test_humaneval()