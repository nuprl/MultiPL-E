# Write a function that takes a string and returns True if the string
# length is a prime number or False otherwise
# Examples
# prime_length('Hello') == True
# prime_length('abcdcba') == True
# prime_length('kittens') == True
# prime_length('orange') == False
prime_length <- function(string) {
    if (length(string) == 1) {
        return(FALSE)
    }
    for (i in 2:(length(string)-1)) {
        if (length(string) %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}
prime_length('Hello')
prime_length('abcdcba')
prime_length('kittens')
prime_length('orange')


test_humaneval <- function() {
candidate <- prime_length
    if(!identical(candidate('Hello'), TRUE)){quit('no', 1)}
    if(!identical(candidate('abcdcba'), TRUE)){quit('no', 1)}
    if(!identical(candidate('kittens'), TRUE)){quit('no', 1)}
    if(!identical(candidate('orange'), FALSE)){quit('no', 1)}
    if(!identical(candidate('wow'), TRUE)){quit('no', 1)}
    if(!identical(candidate('world'), TRUE)){quit('no', 1)}
    if(!identical(candidate('MadaM'), TRUE)){quit('no', 1)}
    if(!identical(candidate('Wow'), TRUE)){quit('no', 1)}
    if(!identical(candidate(''), FALSE)){quit('no', 1)}
    if(!identical(candidate('HI'), TRUE)){quit('no', 1)}
    if(!identical(candidate('go'), TRUE)){quit('no', 1)}
    if(!identical(candidate('gogo'), FALSE)){quit('no', 1)}
    if(!identical(candidate('aaaaaaaaaaaaaaa'), FALSE)){quit('no', 1)}
    if(!identical(candidate('Madam'), TRUE)){quit('no', 1)}
    if(!identical(candidate('M'), FALSE)){quit('no', 1)}
    if(!identical(candidate('0'), FALSE)){quit('no', 1)}
}
test_humaneval()