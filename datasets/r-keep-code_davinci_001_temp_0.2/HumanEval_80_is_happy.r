# You are given a string s.
# Your task is to check if the string is happy or not.
# A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
# For example:
# >>> is_happy(a)
# False
# >>> is_happy(aa)
# False
# >>> is_happy(abcd)
# True
# >>> is_happy(aabb)
# False
# >>> is_happy(adb)
# True
# >>> is_happy(xyy)
# False
is_happy <- function(s) {
    if (length(s) < 3) {
        return(FALSE)
    }
    for (i in 1:length(s)-2) {
        if (s[i] == s[i+1] || s[i] == s[i+2] || s[i+1] == s[i+2]) {
            return(FALSE)
        }
    }
    return(TRUE)
}


test_humaneval <- function() {
candidate <- is_happy
    if(!identical(candidate('a'), FALSE)){quit('no', 1)}
    if(!identical(candidate('aa'), FALSE)){quit('no', 1)}
    if(!identical(candidate('abcd'), TRUE)){quit('no', 1)}
    if(!identical(candidate('aabb'), FALSE)){quit('no', 1)}
    if(!identical(candidate('adb'), TRUE)){quit('no', 1)}
    if(!identical(candidate('xyy'), FALSE)){quit('no', 1)}
    if(!identical(candidate('iopaxpoi'), TRUE)){quit('no', 1)}
    if(!identical(candidate('iopaxioi'), FALSE)){quit('no', 1)}
}
test_humaneval()