# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
-- >>> string_sequence(0)
-- '0'
-- >>> string_sequence(5)
-- '0 1 2 3 4 5'
string_sequence <- function(n)
{
    if (n == 0)
    {
        return('')
    }
    else
    {
        return(paste(0, string_sequence(n-1), sep=' '))
    }

test_humaneval <- function() {
candidate <- string_sequence
    if(!identical(candidate(0), '0')){quit('no', 1)}
    if(!identical(candidate(3), '0 1 2 3')){quit('no', 1)}
    if(!identical(candidate(10), '0 1 2 3 4 5 6 7 8 9 10')){quit('no', 1)}
}