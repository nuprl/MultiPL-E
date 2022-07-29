# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
longest <- function(strings)
{
    if (length(strings) == 0)
    {
        return(NULL)
    }
    else
    {
        max_length <- 0
        longest_string <- NULL
        for (string in strings)
        {
            if (length(string) > max_length)
            {
                max_length <- length(string)
                longest_string <- string
            }
        }
        return(longest_string)
    }

test_humaneval <- function() {
candidate <- longest
    if(!identical(candidate(c()), None)){quit('no', 1)}
    if(!identical(candidate(c('x', 'y', 'z')), 'x')){quit('no', 1)}
    if(!identical(candidate(c('x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc')), 'zzzz')){quit('no', 1)}
}