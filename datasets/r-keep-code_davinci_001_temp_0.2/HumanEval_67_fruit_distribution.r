# In this task, you will be given a string that represents a number of apples and oranges 
# that are distributed in a basket of fruit this basket contains 
# apples, oranges, and mango fruits. Given the string that represents the total number of 
# the oranges and apples and an integer that represent the total number of the fruits 
# in the basket return the number of the mango fruits in the basket.
# for examble:
# fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
# fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
# fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
# fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
fruit_distribution <- function(s, n) {
    # your code here
    return (n - sum(s %in% c("apples", "oranges")) - sum(s %in% c("apple", "orange")))
}

test_humaneval <- function() {
candidate <- fruit_distribution
    if(!identical(candidate('5 apples and 6 oranges', 19), 8)){quit('no', 1)}
    if(!identical(candidate('5 apples and 6 oranges', 21), 10)){quit('no', 1)}
    if(!identical(candidate('0 apples and 1 oranges', 3), 2)){quit('no', 1)}
    if(!identical(candidate('1 apples and 0 oranges', 3), 2)){quit('no', 1)}
    if(!identical(candidate('2 apples and 3 oranges', 100), 95)){quit('no', 1)}
    if(!identical(candidate('2 apples and 3 oranges', 5), 0)){quit('no', 1)}
    if(!identical(candidate('1 apples and 100 oranges', 120), 19)){quit('no', 1)}
}
test_humaneval()