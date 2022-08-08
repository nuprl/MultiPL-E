# Create a function that takes integers, floats, or strings representing
# real numbers, and returns the larger variable in its given variable type.
# Return None if the values are equal.
# Note: If a real number is represented as a string, the floating point might be . or ,
# compare_one(1, 2.5) ➞ 2.5
# compare_one(1, "2,3") ➞ "2,3"
# compare_one("5,1", "6") ➞ "6"
# compare_one("1", 1) ➞ None
compare_one <- function(a, b) {
    if (a > b) {
        return(a)
    } else if (a < b) {
        return(b)
    } else {
        return(NULL)
    }
}

compare_one(1, 2.5)
compare_one(1, "2,3")
compare_one("5,1", "6")
compare_one("1", 1)


test_humaneval <- function() {
candidate <- compare_one
    if(!identical(candidate(1, 2), 2)){quit('no', 1)}
    if(!identical(candidate(1, 2.5), 2.5)){quit('no', 1)}
    if(!identical(candidate(2, 3), 3)){quit('no', 1)}
    if(!identical(candidate(5, 6), 6)){quit('no', 1)}
    if(!identical(candidate(1, '2,3'), '2,3')){quit('no', 1)}
    if(!identical(candidate('5,1', '6'), '6')){quit('no', 1)}
    if(!identical(candidate('1', '2'), '2')){quit('no', 1)}
    if(!identical(candidate('1', 1), NULL)){quit('no', 1)}
}
test_humaneval()