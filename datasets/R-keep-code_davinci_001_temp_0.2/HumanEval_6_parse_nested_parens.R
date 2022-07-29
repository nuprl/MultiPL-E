# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- [2, 3, 1, 3]
parse_nested_parens <- function(paren_string)
{
    # Split the string into a list of strings, each representing a group of parentheses
    paren_groups <- strsplit(paren_string, ' ')[[1]]
    
    # For each group of parentheses, find the maximum level of nesting
    max_nesting <- sapply(paren_groups, function(paren_group)
    {
        # Find the indices of the left and right parentheses
        left_idx <- grep('\(', paren_group)
        right_idx <- grep('\)', paren_group)
        
        # Find the maximum level of nesting
        max(right_idx - left_idx - 1)
    })
    
    # Return the list of maximum levels of nesting
    return(max_nesting)

test_humaneval <- function() {
candidate <- parse_nested_parens
    if(!identical(candidate('(()()) ((())) () ((())()())'), c(2, 3, 1, 3))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c(1, 2, 3, 4))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c(4))){quit('no', 1)}
}