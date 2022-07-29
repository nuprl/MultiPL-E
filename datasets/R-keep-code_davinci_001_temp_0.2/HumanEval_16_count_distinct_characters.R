# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
count_distinct_characters <- function(string) {
    # your code here
    return(length(unique(string)))

test_humaneval <- function() {
candidate <- count_distinct_characters
    if(!identical(candidate(''), 0)){quit('no', 1)}
    if(!identical(candidate('abcde'), 5)){quit('no', 1)}
    if(!identical(candidate('abcdecadeCADE'), 5)){quit('no', 1)}
    if(!identical(candidate('aaaaAAAAaaaa'), 1)){quit('no', 1)}
    if(!identical(candidate('Jerry jERRY JeRRRY'), 5)){quit('no', 1)}
}