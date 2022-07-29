# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
parse_nested_parens <- function(paren_string) {
    # Split the string by spaces
    paren_list <- strsplit(paren_string, " ")[[1]]
    # Initialize the output list
    output <- c()
    # Iterate over the list
    for (i in 1:length(paren_list)) {
        # Find the maximum nesting level
        output <- c(output, max_nesting_level(paren_list[[i]]))
    }
    # Return the output list
    return(output)
}


test_humaneval <- function() {
candidate <- parse_nested_parens
    if(!identical(candidate('(()()) ((())) () ((())()())'), c(2, 3, 1, 3))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c(4))){quit('no', 1)}
}
test_humaneval()