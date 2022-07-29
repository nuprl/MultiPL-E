# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
unique <- function(l) {
    return(sort(unique(l)))
}


test_humaneval <- function() {
candidate <- unique
    if(!identical(candidate(list(5, 3, 5, 2, 3, 3, 9, 0, 123)), list(0, 2, 3, 5, 9, 123))){quit('no', 1)}
}
test_humaneval()