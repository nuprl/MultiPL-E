# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
separate_paren_groups <- function(paren_string)
{
    # Initialize an empty list to store the results
    result <- list()
    
    # Initialize a counter to keep track of the current level of nesting
    current_level <- 0
    
    # Iterate over the string
    for (i in 1:length(paren_string))
    {
        # If the character is an opening parenthesis, increase the nesting level
        if (paren_string[i] == '(')
        {
            current_level <- current_level + 1
        }
        # If the character is a closing parenthesis, decrease the nesting level
        else if (paren_string[i] == ')')
        {
            current_level <- current_level - 1
        }
        # If the nesting level is 0, then we are not inside a group, so append the character to the result
        if (current_level == 0)
        {
            result[[length(result) + 1]] <- paren_string[i]
        }
        # If the nesting level is not 0, then we are inside a group, so append the character to the last group
        else
        {
            result[[length(result)]] <- paste(result[[length(result)]], paren_string[i], sep = "")
        }
    }
    
    # Return the result
    return(result)

test_humaneval <- function() {
candidate <- separate_paren_groups
    if(!identical(candidate('(()()) ((())) () ((())()())'), c('(()())', '((()))', '()', '((())()())'))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), c('()', '(())', '((()))', '(((())))'))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), c('(()(())((())))'))){quit('no', 1)}
    if(!identical(candidate('( ) (( )) (( )( ))'), c('()', '(())', '(()())'))){quit('no', 1)}
}