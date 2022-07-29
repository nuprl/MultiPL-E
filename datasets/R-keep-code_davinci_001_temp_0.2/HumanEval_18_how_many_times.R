# Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
how_many_times <- function(string, substring)
{
    # YOUR CODE HERE
    stopifnot(is.character(string) && is.character(substring))
    stopifnot(length(string) >= 1 && length(substring) >= 1)
    stopifnot(length(substring) <= length(string))
    
    count <- 0
    for (i in 1:(length(string) - length(substring) + 1))
    {
        if (substring == string[i:(i + length(substring) - 1)])
        {
            count <- count + 1
        }
    }
    return(count)
}
how_many_times('', 'a')
how_many_times('aaa', 'a')
how_many_times('aaaa', 'aa')
stopifnot(how_many_times('', 'a') == 0)
stopifnot(how_many_times('aaa', 'a') == 3)
stopifnot(how_many_times('aaaa', 'aa') == 3)


test_humaneval <- function() {
candidate <- how_many_times
    if(!identical(candidate('', 'x'), 0)){quit('no', 1)}
    if(!identical(candidate('xyxyxyx', 'x'), 4)){quit('no', 1)}
    if(!identical(candidate('cacacacac', 'cac'), 4)){quit('no', 1)}
    if(!identical(candidate('john doe', 'john'), 1)){quit('no', 1)}
}