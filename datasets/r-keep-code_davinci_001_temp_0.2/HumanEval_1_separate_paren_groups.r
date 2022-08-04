# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
separate_paren_groups <- function(paren_string) {
    # your code here
}


test_humaneval <- function() {
candidate <- separate_paren_groups
    if(!identical(candidate('(()()) ((())) () ((())()())'), list('(()())', '((()))', '()', '((())()())'))){quit('no', 1)}
    if(!identical(candidate('() (()) ((())) (((())))'), list('()', '(())', '((()))', '(((())))'))){quit('no', 1)}
    if(!identical(candidate('(()(())((())))'), list('(()(())((())))'))){quit('no', 1)}
    if(!identical(candidate('( ) (( )) (( )( ))'), list('()', '(())', '(()())'))){quit('no', 1)}
}
test_humaneval()