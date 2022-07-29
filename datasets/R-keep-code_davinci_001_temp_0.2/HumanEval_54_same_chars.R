# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
same_chars <- function(s0, s1) {
    if (length(s0) != length(s1)) {
        return(FALSE)
    }
    for (i in 1:length(s0)) {
        if (s0[i] != s1[i]) {
            return(FALSE)
        }
    }
    return(TRUE)
}
same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
same_chars('abcd', 'dddddddabc')
same_chars('dddddddabc', 'abcd')
same_chars('eabcd', 'dddddddabc')
same_chars('abcd', 'dddddddabce')
same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')


test_humaneval <- function() {
candidate <- same_chars
    if(!identical(candidate('eabcdzzzz', 'dddzzzzzzzddeddabc'), TRUE)){quit('no', 1)}
    if(!identical(candidate('abcd', 'dddddddabc'), TRUE)){quit('no', 1)}
    if(!identical(candidate('dddddddabc', 'abcd'), TRUE)){quit('no', 1)}
    if(!identical(candidate('eabcd', 'dddddddabc'), FALSE)){quit('no', 1)}
    if(!identical(candidate('abcd', 'dddddddabcf'), FALSE)){quit('no', 1)}
    if(!identical(candidate('eabcdzzzz', 'dddzzzzzzzddddabc'), FALSE)){quit('no', 1)}
    if(!identical(candidate('aabb', 'aaccc'), FALSE)){quit('no', 1)}
}
test_humaneval()