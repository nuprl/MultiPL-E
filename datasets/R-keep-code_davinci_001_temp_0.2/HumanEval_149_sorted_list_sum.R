# Write a function that accepts a list of strings as a parameter,
# deletes the strings that have odd lengths from it,
# and returns the resulted list with a sorted order,
# The list is always a list of strings and never an array of numbers,
# and it may contain duplicates.
# The order of the list should be ascending by length of each word, and you
# should return the list sorted by that rule.
# If two words have the same length, sort the list alphabetically.
# The function should return a list of strings in sorted order.
# You may assume that all words will have the same length.
# For example:
# assert list_sort(["aa", "a", "aaa"]) => ["aa"]
# assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
sorted_list_sum <- function(lst) {
    lst <- sort(lst, decreasing = FALSE)
    lst <- sort(lst, decreasing = TRUE)
    lst <- sort(lst, decreasing = FALSE)
    return(lst)
}


test_humaneval <- function() {
candidate <- sorted_list_sum
    if(!identical(candidate(c('aa', 'a', 'aaa')), c('aa'))){quit('no', 1)}
    if(!identical(candidate(c('school', 'AI', 'asdf', 'b')), c('AI', 'asdf', 'school'))){quit('no', 1)}
    if(!identical(candidate(c('d', 'b', 'c', 'a')), list())){quit('no', 1)}
    if(!identical(candidate(c('d', 'dcba', 'abcd', 'a')), c('abcd', 'dcba'))){quit('no', 1)}
    if(!identical(candidate(c('AI', 'ai', 'au')), c('AI', 'ai', 'au'))){quit('no', 1)}
    if(!identical(candidate(c('a', 'b', 'b', 'c', 'c', 'a')), list())){quit('no', 1)}
    if(!identical(candidate(c('aaaa', 'bbbb', 'dd', 'cc')), c('cc', 'dd', 'aaaa', 'bbbb'))){quit('no', 1)}
}
test_humaneval()