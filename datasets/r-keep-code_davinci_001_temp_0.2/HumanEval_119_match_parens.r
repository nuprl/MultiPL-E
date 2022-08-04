# You are given a list of two strings, both strings consist of open
# parentheses '(' or close parentheses ')' only.
# Your job is to check if it is possible to concatenate the two strings in
# some order, that the resulting string will be good.
# A string S is considered to be good if and only if all parentheses in S
# are balanced. For example: the string '(())()' is good, while the string
# '())' is not.
# Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
# Examples:
# >>> match_parens(['()(', ')'])
# 'Yes'
# >>> match_parens([')', ')'])
# 'No'
match_parens <- function(lst) {
    if (length(lst) == 0) {
        return('Yes')
    }
    if (lst[1] == ')') {
        return('No')
    }
    if (lst[1] == '(') {
        return(match_parens(lst[2:length(lst)]))
    }
}
match_parens(c('(())()', '()', ')()'))


test_humaneval <- function() {
candidate <- match_parens
    if(!identical(candidate(c('()(', ')')), 'Yes')){quit('no', 1)}
    if(!identical(candidate(c(')', ')')), 'No')){quit('no', 1)}
    if(!identical(candidate(c('(()(())', '())())')), 'No')){quit('no', 1)}
    if(!identical(candidate(c(')())', '(()()(')), 'Yes')){quit('no', 1)}
    if(!identical(candidate(c('(())))', '(()())((')), 'Yes')){quit('no', 1)}
    if(!identical(candidate(c('()', '())')), 'No')){quit('no', 1)}
    if(!identical(candidate(c('(()(', '()))()')), 'Yes')){quit('no', 1)}
    if(!identical(candidate(c('((((', '((())')), 'No')){quit('no', 1)}
    if(!identical(candidate(c(')(()', '(()(')), 'No')){quit('no', 1)}
    if(!identical(candidate(c(')(', ')(')), 'No')){quit('no', 1)}
    if(!identical(candidate(c('(', ')')), 'Yes')){quit('no', 1)}
    if(!identical(candidate(c(')', '(')), 'Yes')){quit('no', 1)}
}
test_humaneval()