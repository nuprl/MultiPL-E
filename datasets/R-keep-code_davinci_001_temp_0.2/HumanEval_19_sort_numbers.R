# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sort_numbers <- function(numbers) {
    # YOUR CODE HERE
    stop('Not implemented yet')
}
test_that('Solution is correct', {
    expect_equal(sort_numbers('one two three'), 'one two three')
    expect_equal(sort_numbers('one two three four five six'), 'one two three four five six')
    expect_equal(sort_numbers('one two three four five six seven eight nine'), 'one two three four five six seven eight nine')
    expect_equal(sort_numbers('nine eight seven six five four three two one'), 'one two three four five six seven eight nine')
    expect_equal(sort_numbers('one one two three four five six seven eight nine nine'), 'one one two three four five six seven eight nine nine')
    expect_equal(sort_numbers('one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one

test_humaneval <- function() {
candidate <- sort_numbers
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('three'), 'three')){quit('no', 1)}
    if(!identical(candidate('three five nine'), 'three five nine')){quit('no', 1)}
    if(!identical(candidate('five zero four seven nine eight'), 'zero four five seven eight nine')){quit('no', 1)}
    if(!identical(candidate('six five four three two one zero'), 'zero one two three four five six')){quit('no', 1)}
}