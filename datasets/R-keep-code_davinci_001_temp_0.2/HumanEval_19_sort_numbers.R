# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sort_numbers <- function(numbers)
{
    # Split the input string into a vector of strings
    numbers_vector <- strsplit(numbers, " ")[[1]]
    
    # Convert each string to a number
    numbers_vector <- sapply(numbers_vector, as.numeric)
    
    # Sort the numbers
    numbers_vector <- sort(numbers_vector)
    
    # Convert the numbers back to strings
    numbers_vector <- sapply(numbers_vector, as.character)
    
    # Join the strings into a single string
    numbers_vector <- paste(numbers_vector, collapse = " ")
    
    # Return the result
    return(numbers_vector)

test_humaneval <- function() {
candidate <- sort_numbers
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('three'), 'three')){quit('no', 1)}
    if(!identical(candidate('three five nine'), 'three five nine')){quit('no', 1)}
    if(!identical(candidate('five zero four seven nine eight'), 'zero four five seven eight nine')){quit('no', 1)}
    if(!identical(candidate('six five four three two one zero'), 'zero one two three four five six')){quit('no', 1)}
}