# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
find_closest_elements <- function(numbers)
{
    # Sort the list of numbers
    sorted_numbers <- sort(numbers)
    
    # Find the index of the smallest number in the list
    smallest_index <- which.min(abs(sorted_numbers - sorted_numbers[1]))
    
    # Find the index of the largest number in the list
    largest_index <- which.max(abs(sorted_numbers - sorted_numbers[length(sorted_numbers)]))
    
    # Return the two numbers
    return(c(sorted_numbers[smallest_index], sorted_numbers[largest_index]))
}
find_closest_elements(c(1.0, 2.0, 3.0, 4.0, 5.0, 2.2))
find_closest_elements(c(1.0, 2.0, 3.0, 4.0, 5.0, 2.0))


test_humaneval <- function() {
candidate <- find_closest_elements
    if(!identical(candidate(c(1.0, 2.0, 3.9, 4.0, 5.0, 2.2)), c(3.9, 4.0))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 5.9, 4.0, 5.0)), c(5.0, 5.9))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0, 5.0, 2.2)), c(2.0, 2.2))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0, 5.0, 2.0)), c(2.0, 2.0))){quit('no', 1)}
    if(!identical(candidate(c(1.1, 2.2, 3.1, 4.1, 5.1)), c(2.2, 3.1))){quit('no', 1)}
}