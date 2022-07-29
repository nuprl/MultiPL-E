# Return maximum element in the list.
# >>> max_element([1, 2, 3])
# 3
# >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# 123
max_element <- function(l) {
    max_value <- l[1]
    for (i in 2:length(l)) {
        if (l[i] > max_value) {
            max_value <- l[i]
        }
    }
    return(max_value)
}
max_element([1, 2, 3])
max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])


test_humaneval <- function() {
candidate <- max_element
    if(!identical(candidate(list(1, 2, 3)), 3)){quit('no', 1)}
    if(!identical(candidate(list(5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10)), 124)){quit('no', 1)}
}
test_humaneval()