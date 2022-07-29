# remove_vowels is a function that takes string and returns string without vowels.
# >>> remove_vowels('')
# ''
# >>> remove_vowels('abcdef')
# 'bcdf'
# >>> remove_vowels('aaaaa')
# ''
# >>> remove_vowels('aaBAA')
# 'B'
# >>> remove_vowels('zbcd')
# 'zbcd'
remove_vowels <- function(text) {
    text <- tolower(text)
    text <- gsub('[aeiou]', '', text)
    return(text)
}


test_humaneval <- function() {
candidate <- remove_vowels
    if(!identical(candidate(''), '')){quit('no', 1)}
    if(!identical(candidate('abcdef\nghijklm'), 'bcdf\nghjklm')){quit('no', 1)}
    if(!identical(candidate('fedcba'), 'fdcb')){quit('no', 1)}
    if(!identical(candidate('eeeee'), '')){quit('no', 1)}
    if(!identical(candidate('acBAA'), 'cB')){quit('no', 1)}
    if(!identical(candidate('EcBOO'), 'cB')){quit('no', 1)}
    if(!identical(candidate('ybcd'), 'ybcd')){quit('no', 1)}
}
test_humaneval()