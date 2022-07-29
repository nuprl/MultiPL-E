# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
parse_nested_parens <- function(paren_string) {
    # Split the string by spaces
    paren_list <- strsplit(paren_string, " ")[[1]]
    # Initialize an empty list to store the nesting levels
    nesting_levels <- list()
    # Iterate over each group of parentheses
    for (i in 1:length(paren_list)) {
        # Initialize a counter to store the nesting level
        level <- 0
        # Iterate over each character in the group
        for (j in 1:length(paren_list[[i]])) {
            # If the character is an opening parenthesis, increase the level by 1
            if (paren_list[[i]][j] == '(') {
                level <- level + 1
            }
            # If the character is a closing parenthesis, decrease the level by 1
            else if (paren_list[[i]][j] == ')') {
                level <- level - 1
            }
        }
        # Append the level to the list
        nesting_levels[[i]] <- level
    }
    # Return the list
    nesting_levels

test_humaneval <- function() {
candidate <- parse_nested_parens
    if(!identical(candidate('(()()) ((())) () ((())()())'), c(2, 3, 1, 3))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c(4))){quit('no', 1)}
}