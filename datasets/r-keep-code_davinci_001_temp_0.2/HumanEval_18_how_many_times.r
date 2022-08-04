# Find how many times a given substring can be found in the original string. Count overlaping cases.
# >>> how_many_times('', 'a')
# 0
# >>> how_many_times('aaa', 'a')
# 3
# >>> how_many_times('aaaa', 'aa')
# 3
how_many_times <- function(string, substring) {
    return(sum(grepl(substring, string)))
}
how_many_times('', 'a')
how_many_times('aaa', 'a')
how_many_times('aaaa', 'aa')


test_humaneval <- function() {
candidate <- how_many_times
    if(!identical(candidate('', 'x'), 0)){quit('no', 1)}
    if(!identical(candidate('xyxyxyx', 'x'), 4)){quit('no', 1)}
    if(!identical(candidate('cacacacac', 'cac'), 4)){quit('no', 1)}
    if(!identical(candidate('john doe', 'john'), 1)){quit('no', 1)}
}
test_humaneval()