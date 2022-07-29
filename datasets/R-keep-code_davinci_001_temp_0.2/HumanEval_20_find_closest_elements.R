# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
find_closest_elements <- function(numbers) {
    # Write your code here
}


test_humaneval <- function() {
candidate <- find_closest_elements
    if(!identical(candidate(list(1.0, 2.0, 3.9, 4.0, 5.0, 2.2)), list(3.9, 4.0))){quit('no', 1)}
    if(!identical(candidate(list(1.0, 2.0, 5.9, 4.0, 5.0)), list(5.0, 5.9))){quit('no', 1)}
    if(!identical(candidate(list(1.0, 2.0, 3.0, 4.0, 5.0, 2.2)), list(2.0, 2.2))){quit('no', 1)}
    if(!identical(candidate(list(1.0, 2.0, 3.0, 4.0, 5.0, 2.0)), list(2.0, 2.0))){quit('no', 1)}
    if(!identical(candidate(list(1.1, 2.2, 3.1, 4.1, 5.1)), list(2.2, 3.1))){quit('no', 1)}
}
test_humaneval()