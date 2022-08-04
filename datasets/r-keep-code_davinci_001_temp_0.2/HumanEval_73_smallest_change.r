# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# >>> smallest_change([1,2,3,5,4,7,9,6])
# 4
# >>> smallest_change([1, 2, 3, 4, 3, 2, 2])
# 1
# >>> smallest_change([1, 2, 3, 2, 1])
# 0
smallest_change <- function(arr) {
    # if the array is already palindromic, return 0
    if (is_palindromic(arr)) {
        return(0)
    }
    # if the array is not palindromic, return the minimum number of changes
    # needed to make it palindromic
    else {
        # initialize the minimum number of changes to be the length of the array
        min_changes <- length(arr)
        # for each element in the array, check if it can be changed to make the array
        # palindromic, and if so, change it and update the minimum number of changes
        for (i in 1:length(arr)) {
            for (j in 1:length(arr)) {
                if (is_palindromic(arr[i:length(arr)])) {
                    min_changes <- min(min_changes, length(arr) - i)
                }
                if (is_palindromic(arr[1:(length(arr) - i + 1)])) {
                    min_changes <- min(min_changes, length(arr) - i)
                }
            }
        }
        return(min_changes)
    }
}


test_humaneval <- function() {
candidate <- smallest_change
    if(!identical(candidate(c(1, 2, 3, 5, 4, 7, 9, 6)), 4)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 4, 3, 2, 2)), 1)){quit('no', 1)}
    if(!identical(candidate(c(1, 4, 2)), 1)){quit('no', 1)}
    if(!identical(candidate(c(1, 4, 4, 2)), 1)){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 2, 1)), 0)){quit('no', 1)}
    if(!identical(candidate(c(3, 1, 1, 3)), 0)){quit('no', 1)}
    if(!identical(candidate(c(1)), 0)){quit('no', 1)}
    if(!identical(candidate(c(0, 1)), 1)){quit('no', 1)}
}
test_humaneval()