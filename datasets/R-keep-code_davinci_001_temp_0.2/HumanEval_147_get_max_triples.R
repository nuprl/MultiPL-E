# You are given a positive integer n. You have to create an integer array a of length n.
# For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
# Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
# and a[i] + a[j] + a[k] is a multiple of 3.
# Example :
# Input: n = 5
# Output: 1
# Explanation: 
# a = [1, 3, 7, 13, 21]
# The only valid triple is (1, 7, 13).
get_max_triples <- function(n) {
    a <- rep(NA, n)
    for (i in 1:n) {
        a[i] <- i * i - i + 1
    }
    count <- 0
    for (i in 1:(n - 2)) {
        for (j in (i + 1):(n - 1)) {
            for (k in (j + 1):n) {
                if (a[i] + a[j] + a[k] %% 3 == 0) {
                    count <- count + 1
                }
            }
        }
    }
    return(count)
}
n <- 5
get_max_triples(n)
n <- 10
get_max_triples(n)
n <- 20
get_max_triples(n)
n <- 30
get_max_triples(n)
n <- 100
get_max_triples(n)


test_humaneval <- function() {
candidate <- get_max_triples
    if(!identical(candidate(5), 1)){quit('no', 1)}
    if(!identical(candidate(6), 4)){quit('no', 1)}
    if(!identical(candidate(10), 36)){quit('no', 1)}
    if(!identical(candidate(100), 53361)){quit('no', 1)}
}
test_humaneval()