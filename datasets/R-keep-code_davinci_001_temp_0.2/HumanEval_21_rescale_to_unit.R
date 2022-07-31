# Given list of numbers (of at least two elements), apply a linear transform to that list,
# such that the smallest number will become 0 and the largest will become 1
# >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# [0.0, 0.25, 0.5, 0.75, 1.0]
rescale_to_unit <- function(numbers) {
    # your code here
}


test_humaneval <- function() {
candidate <- rescale_to_unit
    if(!identical(candidate(list(2.0, 49.9)), list(0.0, 1.0))){quit('no', 1)}
    if(!identical(candidate(list(100.0, 49.9)), list(1.0, 0.0))){quit('no', 1)}
    if(!identical(candidate(list(1.0, 2.0, 3.0, 4.0, 5.0)), list(0.0, 0.25, 0.5, 0.75, 1.0))){quit('no', 1)}
    if(!identical(candidate(list(2.0, 1.0, 5.0, 3.0, 4.0)), list(0.25, 0.0, 1.0, 0.5, 0.75))){quit('no', 1)}
    if(!identical(candidate(list(12.0, 11.0, 15.0, 13.0, 14.0)), list(0.25, 0.0, 1.0, 0.5, 0.75))){quit('no', 1)}
}
test_humaneval()