# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
parse_nested_parens <- function(paren_string)
{
    # split the string into a list of strings
    paren_list <- strsplit(paren_string, split = ' ')[[1]]
    
    # initialize an empty list to store the number of levels of nesting
    levels <- list()
    
    # loop through each string in the list
    for (i in 1:length(paren_list))
    {
        # initialize the number of levels of nesting to 0
        num_levels <- 0
        
        # loop through each character in the string
        for (j in 1:length(paren_list[[i]]))
        {
            # if the character is an opening parenthesis, increment the number of levels of nesting
            if (paren_list[[i]][j] == '(')
            {
                num_levels <- num_levels + 1
            }
            # if the character is a closing parenthesis, decrement the number of levels of nesting
            else if (paren_list[[i]][j] == ')')
            {
                num_levels <- num_levels - 1
            }
        }
        
        # append the number of levels of nesting to the list
        levels[[i]] <- num_levels
    }
    
    # return the list
    levels

test_humaneval <- function() {
candidate <- parse_nested_parens
    if(!identical(candidate('(()()) ((())) () ((())()())'), c(2, 3, 1, 3))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c(4))){quit('no', 1)}
}