# You will be given a number in decimal form and your task is to convert it to
# binary format. The function should return a string, with each character representing a binary
# number. Each character in the string will be '0' or '1'.
# There will be an extra couple of characters 'db' at the beginning and at the end of the string.
# The extra characters are there to help with the format.
# Examples:
# decimal_to_binary(15)   # returns "db1111db"
# decimal_to_binary(32)   # returns "db100000db"
decimal_to_binary <- function(decimal) {
    # your code here
}


test_humaneval <- function() {
candidate <- decimal_to_binary
    if(!identical(candidate(0), 'db0db')){quit('no', 1)}
    if(!identical(candidate(32), 'db100000db')){quit('no', 1)}
    if(!identical(candidate(103), 'db1100111db')){quit('no', 1)}
    if(!identical(candidate(15), 'db1111db')){quit('no', 1)}
}
test_humaneval()