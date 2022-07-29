# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
longest <- function(strings) {
    if (length(strings) == 0) {
        return(None)
    }
    longest_string <- strings[1]
    for (i in 2:length(strings)) {
        if (length(strings[i]) > length(longest_string)) {
            longest_string <- strings[i]
        }
    }
    return(longest_string)
}


test_humaneval <- function() {
candidate <- longest
    if(!identical(candidate(list()), NULL)){quit('no', 1)}
    if(!identical(candidate(list('x', 'y', 'z')), 'x')){quit('no', 1)}
    if(!identical(candidate(list('x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc')), 'zzzz')){quit('no', 1)}
}
test_humaneval()