# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
flip_case <- function(string)
{
    return(toupper(substring(string, 1, 1))
          + tolower(substring(string, 2, nchar(string))))
}
flip_case('Hello')


test_humaneval <- function() {
candidate <- flip_case
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('Hello!'), 'hELLO!')){quit('no', 1)}
    if(!identical(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')){quit('no', 1)}
}