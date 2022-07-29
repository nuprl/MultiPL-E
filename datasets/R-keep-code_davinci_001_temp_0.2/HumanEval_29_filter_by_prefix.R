# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
filter_by_prefix <- function(strings, prefix)
{
    return(
        strings[
            startsWith(strings, prefix)
        ]
    )

test_humaneval <- function() {
candidate <- filter_by_prefix
    if(!identical(candidate(c(), 'john'), c())){quit('no', 1)}
    if(!identical(candidate(c('xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'), 'xxx'), c('xxx', 'xxxAAA', 'xxx'))){quit('no', 1)}
}