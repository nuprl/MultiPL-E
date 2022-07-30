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
    if(!identical(candidate(list(), 'john'), list())){quit('no', 1)}
    if(!identical(candidate(list('xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'), 'xxx'), list('xxx', 'xxxAAA', 'xxx'))){quit('no', 1)}
    if(!identical(candidate(list('xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'), 'xx'), list('xxx', 'aaaxxy', 'xxxAAA', 'xxx'))){quit('no', 1)}
    if(!identical(candidate(list('grunt', 'trumpet', 'prune', 'gruesome'), 'run'), list('grunt', 'prune'))){quit('no', 1)}
}
test_humaneval()