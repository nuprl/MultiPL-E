# You're given a list of deposit and withdrawal operations on a bank account that starts with
# zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
# at that point function should return True. Otherwise it should return False.
# >>> below_zero([1, 2, 3])
# False
# >>> below_zero([1, 2, -4, 5])
# True
below_zero <- function(operations) {
    balance <- 0
    for (op in operations) {
        if (op < 0) {
            balance <- balance - op
            if (balance < 0) {
                return(TRUE)
            }
        } else {
            balance <- balance + op
        }
    }
    return(FALSE)
}


test_humaneval <- function() {
candidate <- below_zero
    if(!identical(candidate(list()), FALSE)){quit('no', 1)}
    if(!identical(candidate(list(1, 2, -3, 1, 2, -3)), FALSE)){quit('no', 1)}
    if(!identical(candidate(list(1, 2, -4, 5, 6)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(1, -1, 2, -2, 5, -5, 4, -4)), FALSE)){quit('no', 1)}
    if(!identical(candidate(list(1, -1, 2, -2, 5, -5, 4, -5)), TRUE)){quit('no', 1)}
    if(!identical(candidate(list(1, -2, 2, -2, 5, -5, 4, -4)), TRUE)){quit('no', 1)}
}
test_humaneval()