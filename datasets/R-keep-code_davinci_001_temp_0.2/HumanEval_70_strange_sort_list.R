# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
strange_sort_list <- function(lst) {
    if (length(lst) == 0) {
        return(lst)
    }
    else {
        return(c(lst[1], strange_sort_list(c(max(lst[-1]), min(lst[-1])))[2:length(lst)]))
    }
}


test_humaneval <- function() {
candidate <- strange_sort_list
    if(!identical(candidate(list(1, 2, 3, 4)), list(1, 4, 2, 3))){quit('no', 1)}
    if(!identical(candidate(list(5, 6, 7, 8, 9)), list(5, 9, 6, 8, 7))){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3, 4, 5)), list(1, 5, 2, 4, 3))){quit('no', 1)}
    if(!identical(candidate(list(5, 6, 7, 8, 9, 1)), list(1, 9, 5, 8, 6, 7))){quit('no', 1)}
    if(!identical(candidate(list(5, 5, 5, 5)), list(5, 5, 5, 5))){quit('no', 1)}
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(list(1, 2, 3, 4, 5, 6, 7, 8)), list(1, 8, 2, 7, 3, 6, 4, 5))){quit('no', 1)}
    if(!identical(candidate(list(0, 2, 2, 2, 5, 5, -5, -5)), list(-5, 5, -5, 5, 0, 2, 2, 2))){quit('no', 1)}
    if(!identical(candidate(list(111111)), list(111111))){quit('no', 1)}
}
test_humaneval()