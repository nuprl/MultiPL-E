# Create a function that takes a string as input which contains only square brackets.
# The function should return True if and only if there is a valid subsequence of brackets 
# where at least one bracket in the subsequence is nested.
# >>> is_nested('[[]]') 
# True
# >>> is_nested('[]]]]]]][[[[[]') 
# False
# >>> is_nested('[][]') 
# False
# >>> is_nested('[]') 
# False
# >>> is_nested('[[][]]') 
# True
# >>> is_nested('[[]][[') 
# True
is_nested <- function(string) {
    # your code here
}


test_humaneval <- function() {
candidate <- is_nested
    if(!identical(candidate('[[]]'), TRUE)){quit('no', 1)}
    if(!identical(candidate('[]]]]]]][[[[[]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[][]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[[[[]]]]'), TRUE)){quit('no', 1)}
    if(!identical(candidate('[]]]]]]]]]]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[][][[]]'), TRUE)){quit('no', 1)}
    if(!identical(candidate('[[]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[]]'), FALSE)){quit('no', 1)}
    if(!identical(candidate('[[]][['), TRUE)){quit('no', 1)}
    if(!identical(candidate('[[][]]'), TRUE)){quit('no', 1)}
    if(!identical(candidate(''), FALSE)){quit('no', 1)}
    if(!identical(candidate('[[[[[[[['), FALSE)){quit('no', 1)}
    if(!identical(candidate(']]]]]]]]'), FALSE)){quit('no', 1)}
}
test_humaneval()