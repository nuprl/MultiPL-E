# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
string_sequence <- function(n) {
    # YOUR CODE HERE
    return(paste(seq(0,n), collapse = " "))
}
string_sequence(5)
test_that("the answer is correct", {
    expect_equal(digest(string_sequence(0)), "d6d9c9e6e4a6f1a6")
    expect_equal(digest(string_sequence(5)), "9e6a4a6f1c9e6e4a")
})
print("Success!")


test_humaneval <- function() {
candidate <- string_sequence
    if(!identical(candidate(0), '0')){quit('no', 1)}
    if(!identical(candidate(3), '0 1 2 3')){quit('no', 1)}
    if(!identical(candidate(10), '0 1 2 3 4 5 6 7 8 9 10')){quit('no', 1)}
}
test_humaneval()