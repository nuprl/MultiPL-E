# Given two lists operator, and operand. The first list has basic algebra operations, and 
# the second list is a list of integers. Use the two given lists to build the algebric 
# expression and return the evaluation of this expression.
# The basic algebra operations:
# Addition ( + ) 
# Subtraction ( - ) 
# Multiplication ( * ) 
# Floor division ( // ) 
# Exponentiation ( ** ) 
# Example:
# operator['+', '*', '-']
# array = [2, 3, 4, 5]
# result = 2 + 3 * 4 - 5
# => result = 9
# Note:
# The length of operator list is equal to the length of operand list minus one.
# Operand is a list of of non-negative integers.
# Operator list has at least one operator, and operand list has at least two operands.
do_algebra <- function(operator, operand) {
    # your code here
    return(eval(as.character(paste(operand, operator, sep = ""))))
}


test_humaneval <- function() {
candidate <- do_algebra
    if(!identical(candidate(c('**', '*', '+'), c(2, 3, 4, 5)), 37)){quit('no', 1)}
    if(!identical(candidate(c('+', '*', '-'), c(2, 3, 4, 5)), 9)){quit('no', 1)}
    if(!identical(candidate(c('//', '*'), c(7, 3, 4)), 8)){quit('no', 1)}
}
test_humaneval()