# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
modp <- function(n, p) {
    if (n == 0) {
        return 1
    }
    if (n % 2 == 0) {
        return modp(n / 2, p) * modp(n / 2, p) % p
    } else {
        return modp(n / 2, p) * modp(n / 2, p) * p % p
    }
}


test_humaneval <- function() {
candidate <- modp
    if(!identical(candidate(3, 5), 3)){quit('no', 1)}
    if(!identical(candidate(1101, 101), 2)){quit('no', 1)}
    if(!identical(candidate(0, 101), 1)){quit('no', 1)}
    if(!identical(candidate(3, 11), 8)){quit('no', 1)}
    if(!identical(candidate(100, 101), 1)){quit('no', 1)}
    if(!identical(candidate(30, 5), 4)){quit('no', 1)}
    if(!identical(candidate(31, 5), 3)){quit('no', 1)}
}
test_humaneval()