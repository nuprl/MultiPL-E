# Write a function vowels_count which takes a string representing
-- a word as input and returns the number of vowels in the string.
-- Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
-- vowel, but only when it is at the end of the given word.
-- Example:
-- >>> vowels_count("abcde")
-- 2
-- >>> vowels_count("ACEDY")
-- 3
vowels_count <- function(s)
{
    # YOUR CODE HERE
    return(sum(s %in% c("a","e","i","o","u")))

test_humaneval <- function() {
candidate <- vowels_count
    if(!identical(candidate('abcde'), 2)){quit('no', 1)}
    if(!identical(candidate('Alone'), 3)){quit('no', 1)}
    if(!identical(candidate('key'), 2)){quit('no', 1)}
    if(!identical(candidate('bye'), 1)){quit('no', 1)}
    if(!identical(candidate('keY'), 2)){quit('no', 1)}
    if(!identical(candidate('bYe'), 1)){quit('no', 1)}
    if(!identical(candidate('ACEDY'), 3)){quit('no', 1)}
}