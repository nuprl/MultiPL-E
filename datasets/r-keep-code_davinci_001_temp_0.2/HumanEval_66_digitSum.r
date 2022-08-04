# Task
# Write a function that takes a string as input and returns the sum of the upper characters only'
# ASCII codes.
# Examples:
# >>> digitSum("")
# 0
# >>> digitSum("abAB")
# 131
# >>> digitSum("abcCd")
# 67
# >>> digitSum("helloE")
# 69
# >>> digitSum("woArBld")
# 131
# >>> digitSum("aAaaaXa")
# 153
digitSum <- function(s) {
    s <- gsub("[^A-Z]", "", s)
    return(sum(s))
}
digitSum("")
digitSum("abAB")
digitSum("abcCd")
digitSum("helloE")
digitSum("woArBld")
digitSum("aAaaaXa")


test_humaneval <- function() {
candidate <- digitSum
    if(!identical(candidate(''), 0)){quit('no', 1)}
    if(!identical(candidate('abAB'), 131)){quit('no', 1)}
    if(!identical(candidate('abcCd'), 67)){quit('no', 1)}
    if(!identical(candidate('helloE'), 69)){quit('no', 1)}
    if(!identical(candidate('woArBld'), 131)){quit('no', 1)}
    if(!identical(candidate('aAaaaXa'), 153)){quit('no', 1)}
    if(!identical(candidate(' How are yOu?'), 151)){quit('no', 1)}
    if(!identical(candidate('You arE Very Smart'), 327)){quit('no', 1)}
}
test_humaneval()