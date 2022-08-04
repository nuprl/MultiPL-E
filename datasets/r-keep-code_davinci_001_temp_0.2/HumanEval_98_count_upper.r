# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# >>> count_upper('aBCdEf')
# 1
# >>> count_upper('abcdefg')
# 0
# >>> count_upper('dBBE')
# 0
count_upper <- function(s) {
    count <- 0
    for (i in seq(1, length(s), 2)) {
        if (s[i] == toupper(s[i])) {
            count <- count + 1
        }
    }
    return(count)
}
count_upper('aBCdEf')
count_upper('abcdefg')
count_upper('dBBE')


test_humaneval <- function() {
candidate <- count_upper
    if(!identical(candidate('aBCdEf'), 1)){quit('no', 1)}
    if(!identical(candidate('abcdefg'), 0)){quit('no', 1)}
    if(!identical(candidate('dBBE'), 0)){quit('no', 1)}
    if(!identical(candidate('B'), 0)){quit('no', 1)}
    if(!identical(candidate('U'), 1)){quit('no', 1)}
    if(!identical(candidate(''), 0)){quit('no', 1)}
    if(!identical(candidate('EEEE'), 2)){quit('no', 1)}
}
test_humaneval()