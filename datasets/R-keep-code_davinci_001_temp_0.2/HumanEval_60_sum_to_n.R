# sum_to_n is a function that sums numbers from 1 to n.
# >>> sum_to_n(30)
# 465
# >>> sum_to_n(100)
# 5050
# >>> sum_to_n(5)
# 15
# >>> sum_to_n(10)
# 55
# >>> sum_to_n(1)
# 1
sum_to_n <- function(n) {
    sum <- 0
    for (i in 1:n) {
        sum <- sum + i
    }
    return(sum)
}
sum_to_n(30)
sum_to_n(100)
sum_to_n(5)
sum_to_n(10)
sum_to_n(1)


test_humaneval <- function() {
candidate <- sum_to_n
    if(!identical(candidate(1), 1)){quit('no', 1)}
    if(!identical(candidate(6), 21)){quit('no', 1)}
    if(!identical(candidate(11), 66)){quit('no', 1)}
    if(!identical(candidate(30), 465)){quit('no', 1)}
    if(!identical(candidate(100), 5050)){quit('no', 1)}
}
test_humaneval()