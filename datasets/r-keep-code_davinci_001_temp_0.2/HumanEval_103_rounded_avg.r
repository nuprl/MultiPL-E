# You are given two positive integers n and m, and your task is to compute the
# average of the integers from n through m (including n and m). 
# Round the answer to the nearest integer and convert that to binary.
# If n is greater than m, return -1.
# Example:
# >>> rounded_avg(1, 5)
# "0b11"
# >>> rounded_avg(7, 5)
# -1
# >>> rounded_avg(10, 20)
# "0b1111"
# >>> rounded_avg(20, 33)
# "0b11010"
rounded_avg <- function(n, m) {
    if (n > m) {
        return(-1)
    } else {
        sum <- 0
        for (i in n:m) {
            sum <- sum + i
        }
        return(bin(round(sum/(m-n+1))))
    }
}
rounded_avg(1, 5)
rounded_avg(7, 5)
rounded_avg(10, 20)
rounded_avg(20, 33)


test_humaneval <- function() {
candidate <- rounded_avg
    if(!identical(candidate(1, 5), '0b11')){quit('no', 1)}
    if(!identical(candidate(7, 13), '0b1010')){quit('no', 1)}
    if(!identical(candidate(964, 977), '0b1111001010')){quit('no', 1)}
    if(!identical(candidate(996, 997), '0b1111100100')){quit('no', 1)}
    if(!identical(candidate(560, 851), '0b1011000010')){quit('no', 1)}
    if(!identical(candidate(185, 546), '0b101101110')){quit('no', 1)}
    if(!identical(candidate(362, 496), '0b110101101')){quit('no', 1)}
    if(!identical(candidate(350, 902), '0b1001110010')){quit('no', 1)}
    if(!identical(candidate(197, 233), '0b11010111')){quit('no', 1)}
    if(!identical(candidate(7, 5), -1)){quit('no', 1)}
    if(!identical(candidate(5, 1), -1)){quit('no', 1)}
    if(!identical(candidate(5, 5), '0b101')){quit('no', 1)}
}
test_humaneval()