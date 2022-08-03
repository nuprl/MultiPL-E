# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
remove_duplicates <- function(numbers) {
    unique_numbers <- unique(numbers)
    unique_numbers[duplicated(unique_numbers)] <- NULL
    return(unique_numbers)
}


test_humaneval <- function() {
candidate <- remove_duplicates
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4)), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 2, 4, 3, 5)), c(1, 4, 5))){quit('no', 1)}
}
test_humaneval()