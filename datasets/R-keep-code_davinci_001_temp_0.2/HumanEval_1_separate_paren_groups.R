# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the list of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- ['()', '(())', '(()())']
separate_paren_groups <- function(paren_string)
{
    # Initialize empty list to store the groups
    paren_groups <- list()
    
    # Initialize the current group to an empty string
    current_group <- ''
    
    # Iterate over each character in the string
    for (char in paren_string)
    {
        # If the character is an open brace, append it to the current group
        if (char == '(')
        {
            current_group <- paste(current_group, char)
        }
        # If the character is a closed brace, append it to the current group
        else if (char == ')')
        {
            current_group <- paste(current_group, char)
        }
        # If the character is a space, append it to the current group
        else if (char == ' ')
        {
            current_group <- paste(current_group, char)
        }
        # If the character is not a brace, space, or empty, raise an error
        else
        {
            stop('Invalid character')
        }
    }
    
    # If the current group is not empty, add it to the list of groups
    if (current_group != '')
    {
        paren_groups <- c(paren_groups, current_group)
    }
    
    # Return the list of groups
    return(paren_groups)

test_humaneval <- function() {
candidate <- separate_paren_groups
    if(!identical(candidate('(()()) ((())) () ((())()())'), c('(()())', '((()))', '()', '((())()())'))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c('()', '(())', '((()))', '(((())))'))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c('(()(())((())))'))){quit('no', 1)}
    if(!identical(candidate('( ) (( )) (( )( ))'), c('()', '(())', '(()())'))){quit('no', 1)}
}