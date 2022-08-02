# "Given an array representing a branch of a tree that has non-negative integer nodes
# your task is to pluck one of the nodes and return it.
# The plucked node should be the node with the smallest even value.
# If multiple nodes with the same smallest even value are found return the node that has smallest index.
# The plucked node should be returned in a list, [ smalest_value, its index ],
# If there are no even values or the given array is empty, return [].
# Example 1:
# Input: [4,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index.
# Example 2:
# Input: [1,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index. 
# Example 3:
# Input: []
# Output: []
# Example 4:
# Input: [5, 0, 3, 0, 4, 2]
# Output: [0, 1]
# Explanation: 0 is the smallest value, but  there are two zeros,
# so we will choose the first zero, which has the smallest index.
# Constraints:
# * 1 <= nodes.length <= 10000
# * 0 <= node.value
pluck <- function(arr) {
    if (length(arr) == 0) return(list())
    if (length(arr) == 1) return(list(arr[1], 1))
    evens <- arr[arr %% 2 == 0]
    if (length(evens) == 0) return(list())
    min_even <- min(evens)
    min_even_index <- which(arr == min_even)
    return(list(min_even, min_even_index))
}


test_humaneval <- function() {
candidate <- pluck
    if(!identical(candidate(c(4, 2, 3)), c(2, 1))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3)), c(2, 1))){quit('no', 1)}
    if(!identical(candidate(c()), c())){quit('no', 1)}
    if(!identical(candidate(c(5, 0, 3, 0, 4, 2)), c(0, 1))){quit('no', 1)}
    if(!identical(candidate(c(1, 2, 3, 0, 5, 3)), c(0, 3))){quit('no', 1)}
    if(!identical(candidate(c(5, 4, 8, 4, 8)), c(4, 1))){quit('no', 1)}
    if(!identical(candidate(c(7, 6, 7, 1)), c(6, 1))){quit('no', 1)}
    if(!identical(candidate(c(7, 9, 7, 1)), c())){quit('no', 1)}
}
test_humaneval()