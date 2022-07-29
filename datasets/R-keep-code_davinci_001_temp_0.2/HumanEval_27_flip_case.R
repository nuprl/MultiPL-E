# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
flip_case <- function(string)
{
    return(paste(tolower(string), toupper(string), sep = ''))

test_humaneval <- function() {
candidate <- flip_case
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('Hello!'), 'hELLO!')){quit('no', 1)}
    if(!identical(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')){quit('no', 1)}
}