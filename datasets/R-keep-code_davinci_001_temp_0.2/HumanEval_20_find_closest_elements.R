# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
find_closest_elements <- function(numbers) {
    if (length(numbers) < 2) {
        stop("Need at least two numbers")
    }
    closest_numbers <- c(numbers[1], numbers[2])
    for (i in 1:(length(numbers) - 1)) {
        for (j in (i + 1):length(numbers)) {
            if (abs(numbers[i] - numbers[j]) < abs(closest_numbers[1] - closest_numbers[2])) {
                closest_numbers <- c(numbers[i], numbers[j])
            }
        }
    }
    closest_numbers
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