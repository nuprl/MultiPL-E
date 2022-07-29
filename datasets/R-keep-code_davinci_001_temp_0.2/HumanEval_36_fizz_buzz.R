# Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
# >>> fizz_buzz(50)
# 0
# >>> fizz_buzz(78)
# 2
# >>> fizz_buzz(79)
# 3
fizz_buzz <- function(n) {
    count <- 0
    for (i in 1:n) {
        if (i %% 11 == 0 | i %% 13 == 0) {
            if (i %% 7 == 0) {
                count <- count + 1
            }
        }
    }
    return(count)
}

fizz_buzz(50)
fizz_buzz(78)
fizz_buzz(79)


test_humaneval <- function() {
candidate <- fizz_buzz
    if(!identical(candidate(50), 0)){quit('no', 1)}
    if(!identical(candidate(78), 2)){quit('no', 1)}
    if(!identical(candidate(79), 3)){quit('no', 1)}
    if(!identical(candidate(100), 3)){quit('no', 1)}
    if(!identical(candidate(200), 6)){quit('no', 1)}
    if(!identical(candidate(4000), 192)){quit('no', 1)}
    if(!identical(candidate(10000), 639)){quit('no', 1)}
    if(!identical(candidate(100000), 8026)){quit('no', 1)}
}
test_humaneval()