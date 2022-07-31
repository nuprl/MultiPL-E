# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sort_numbers <- function(numbers) {
    # YOUR CODE HERE
    return(sorted(numbers))
}


test_humaneval <- function() {
candidate <- sort_numbers
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('three'), 'three')){quit('no', 1)}
    if(!identical(candidate('three five nine'), 'three five nine')){quit('no', 1)}
    if(!identical(candidate('five zero four seven nine eight'), 'zero four five seven eight nine')){quit('no', 1)}
    if(!identical(candidate('six five four three two one zero'), 'zero one two three four five six')){quit('no', 1)}
}
test_humaneval()