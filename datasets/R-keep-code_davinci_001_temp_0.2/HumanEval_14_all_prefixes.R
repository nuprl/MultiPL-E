# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
all_prefixes <- function(string) {
    prefixes <- c()
    for (i in 1:length(string)) {
        prefixes <- c(prefixes, substr(string, 1, i))
    }
    return(prefixes)

test_humaneval <- function() {
candidate <- all_prefixes
    if(!identical(candidate(''), c())){quit('no', 1)}
    if(!identical(candidate('asdfgh'), c('a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'))){quit('no', 1)}
    if(!identical(candidate('WWW'), c('W', 'WW', 'WWW'))){quit('no', 1)}
}