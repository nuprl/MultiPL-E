# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
filter_by_substring <- function(strings, substring) {
    # your code here
}


test_humaneval <- function() {
candidate <- filter_by_substring
    if(!identical(candidate(c(), 'john'), c())){quit('no', 1)}
    if(!identical(candidate(c('xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'), 'xxx'), c('xxx', 'xxxAAA', 'xxx'))){quit('no', 1)}
    if(!identical(candidate(c('xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'), 'xx'), c('xxx', 'aaaxxy', 'xxxAAA', 'xxx'))){quit('no', 1)}
    if(!identical(candidate(c('grunt', 'trumpet', 'prune', 'gruesome'), 'run'), c('grunt', 'prune'))){quit('no', 1)}
}
test_humaneval()