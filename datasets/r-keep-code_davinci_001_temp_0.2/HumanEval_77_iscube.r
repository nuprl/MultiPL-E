# Write a function that takes an integer a and returns True 
# if this ingeger is a cube of some integer number.
# Note: you may assume the input is always valid.
# Examples:
# iscube(1) ==> True
# iscube(2) ==> False
# iscube(-1) ==> True
# iscube(64) ==> True
# iscube(0) ==> True
# iscube(180) ==> False
iscube <- function(a) {
    if (a == 0) {
        return(TRUE)
    }
    if (a < 0) {
        a <- -a
    }
    b <- 0
    while (b < a) {
        b <- b + 1
        if (b^3 == a) {
            return(TRUE)
        }
    }
    return(FALSE)
}


test_humaneval <- function() {
candidate <- iscube
    if(!identical(candidate(1), TRUE)){quit('no', 1)}
    if(!identical(candidate(2), FALSE)){quit('no', 1)}
    if(!identical(candidate(-1), TRUE)){quit('no', 1)}
    if(!identical(candidate(64), TRUE)){quit('no', 1)}
    if(!identical(candidate(180), FALSE)){quit('no', 1)}
    if(!identical(candidate(1000), TRUE)){quit('no', 1)}
    if(!identical(candidate(0), TRUE)){quit('no', 1)}
    if(!identical(candidate(1729), FALSE)){quit('no', 1)}
}
test_humaneval()