# Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
# Example
# is_equal_to_sum_even(4) == False
# is_equal_to_sum_even(6) == False
# is_equal_to_sum_even(8) == True
is_equal_to_sum_even <- function(n) {
    if(n %% 2 != 0) {
        return(FALSE)
    }
    for(i in 2:n) {
        for(j in 2:n) {
            for(k in 2:n) {
                for(l in 2:n) {
                    if(i + j + k + l == n) {
                        if(i %% 2 == 0 && j %% 2 == 0 && k %% 2 == 0 && l %% 2 == 0) {
                            return(TRUE)
                        }
                    }
                }
            }
        }
    }
    return(FALSE)
}


test_humaneval <- function() {
candidate <- is_equal_to_sum_even
    if(!identical(candidate(4), FALSE)){quit('no', 1)}
    if(!identical(candidate(6), FALSE)){quit('no', 1)}
    if(!identical(candidate(8), TRUE)){quit('no', 1)}
    if(!identical(candidate(10), TRUE)){quit('no', 1)}
    if(!identical(candidate(11), FALSE)){quit('no', 1)}
    if(!identical(candidate(12), TRUE)){quit('no', 1)}
    if(!identical(candidate(13), FALSE)){quit('no', 1)}
    if(!identical(candidate(16), TRUE)){quit('no', 1)}
}
test_humaneval()