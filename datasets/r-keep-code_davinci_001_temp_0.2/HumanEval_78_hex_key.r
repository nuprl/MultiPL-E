# You have been tasked to write a function that receives 
# a hexadecimal number as a string and counts the number of hexadecimal 
# digits that are primes (prime number, or a prime, is a natural number 
# greater than 1 that is not a product of two smaller natural numbers).
# Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
# Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
# So you have to determine a number of the following digits: 2, 3, 5, 7, 
# B (=decimal 11), D (=decimal 13).
# Note: you may assume the input is always correct or empty string, 
# and symbols A,B,C,D,E,F are always uppercase.
# Examples:
# >>> hex_key("AB")
# 1
# >>> hex_key("1077E")
# 2
# >>> hex_key("ABED1A33")
# 4
# >>> hex_key("123456789ABCDEF0")
# 6
# >>> hex_key("2020")
# 2
hex_key <- function(num) {
    num <- strsplit(num, "")[[1]]
    num <- as.numeric(num)
    num <- num[num >= 10]
    num <- num[num < 16]
    num <- as.character(num)
    num <- as.numeric(num)
    num <- num[num %in% c(2, 3, 5, 7, 11, 13, 17)]
    return(length(num))
}
hex_key("AB")
hex_key("1077E")
hex_key("ABED1A33")
hex_key("123456789ABCDEF0")
hex_key("2020")


test_humaneval <- function() {
candidate <- hex_key
    if(!identical(candidate('AB'), 1)){quit('no', 1)}
    if(!identical(candidate('1077E'), 2)){quit('no', 1)}
    if(!identical(candidate('ABED1A33'), 4)){quit('no', 1)}
    if(!identical(candidate('2020'), 2)){quit('no', 1)}
    if(!identical(candidate('123456789ABCDEF0'), 6)){quit('no', 1)}
    if(!identical(candidate('112233445566778899AABBCCDDEEFF00'), 12)){quit('no', 1)}
}
test_humaneval()