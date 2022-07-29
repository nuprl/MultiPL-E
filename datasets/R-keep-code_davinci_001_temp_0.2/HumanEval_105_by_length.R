# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# arr = [2, 1, 1, 4, 5, 8, 2, 3]   
# -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
# -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
# return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# arr = []
# return []
# If the array has any strange number ignore it:
# arr = [1, -1 , 55] 
# -> sort arr -> [-1, 1, 55]
# -> reverse arr -> [55, 1, -1]
# return = ['One']
by_length <- function(arr) {
    arr <- sort(arr)
    arr <- rev(arr)
    for (i in 1:length(arr)) {
        if (arr[i] == 1) {
            arr[i] <- "One"
        } else if (arr[i] == 2) {
            arr[i] <- "Two"
        } else if (arr[i] == 3) {
            arr[i] <- "Three"
        } else if (arr[i] == 4) {
            arr[i] <- "Four"
        } else if (arr[i] == 5) {
            arr[i] <- "Five"
        } else if (arr[i] == 6) {
            arr[i] <- "Six"
        } else if (arr[i] == 7) {
            arr[i] <- "Seven"
        } else if (arr[i] == 8) {
            arr[i] <- "Eight"
        } else if (arr[i] == 9) {
            arr[i] <- "Nine"
        }
    }
    return(arr)
}
by_length(c(2, 1, 1, 4, 5, 8, 2, 3))


test_humaneval <- function() {
candidate <- by_length
    if(!identical(candidate(list(2, 1, 1, 4, 5, 8, 2, 3)), list('Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'))){quit('no', 1)}
    if(!identical(candidate(list()), list())){quit('no', 1)}
    if(!identical(candidate(list(1, -1, 55)), list('One'))){quit('no', 1)}
    if(!identical(candidate(list(1, -1, 3, 2)), list('Three', 'Two', 'One'))){quit('no', 1)}
    if(!identical(candidate(list(9, 4, 8)), list('Nine', 'Eight', 'Four'))){quit('no', 1)}
}
test_humaneval()