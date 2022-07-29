# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
string_xor <- function(a, b)
{
    a <- as.integer(a)
    b <- as.integer(b)
    return(as.character(a ^ b))

test_humaneval <- function() {
candidate <- string_xor
    if(!identical(candidate('111000', '101010'), '010010')){quit('no', 1)}
    if(!identical(candidate('1', '1'), '0')){quit('no', 1)}
    if(!identical(candidate('0101', '0000'), '0101')){quit('no', 1)}
}