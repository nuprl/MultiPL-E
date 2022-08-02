# Concatenate list of strings into a single string
# >>> concatenate([])
# ''
# >>> concatenate(['a', 'b', 'c'])
# 'abc'
concatenate <- function(strings) {
    if (length(strings) == 0) {
        return('')
    }
    if (length(strings) == 1) {
        return(strings[1])
    }
    return(paste(strings[1], concatenate(strings[-1])))
}


test_humaneval <- function() {
candidate <- concatenate
    if(!identical(candidate(c()), '')){quit('no', 1)}
    if(!identical(candidate(c('x', 'y', 'z')), 'xyz')){quit('no', 1)}
    if(!identical(candidate(c('x', 'y', 'z', 'w', 'k')), 'xyzwk')){quit('no', 1)}
}
test_humaneval()