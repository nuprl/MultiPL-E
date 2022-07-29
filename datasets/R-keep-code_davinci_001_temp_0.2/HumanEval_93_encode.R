# Write a function that takes a message, and encodes in such a 
# way that it swaps case of all letters, replaces all vowels in 
# the message with the letter that appears 2 places ahead of that 
# vowel in the english alphabet. 
# Assume only letters. 
# Examples:
# >>> encode('test')
# 'TGST'
# >>> encode('This is a message')
# 'tHKS KS C MGSSCGG'
encode <- function(message) {
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQRSTVWXYZ]', '', message)
    message <- strsplit(message, '')
    message <- paste(message, collapse = '')
    message <- toupper(message)
    message <- gsub('[AEIOU]', '', message)
    message <- gsub('[BCDFGHJKLMNPQR

test_humaneval <- function() {
candidate <- encode
    if(!identical(candidate('TEST'), 'tgst')){quit('no', 1)}
    if(!identical(candidate('Mudasir'), 'mWDCSKR')){quit('no', 1)}
    if(!identical(candidate('YES'), 'ygs')){quit('no', 1)}
    if(!identical(candidate('This is a message'), 'tHKS KS C MGSSCGG')){quit('no', 1)}
    if(!identical(candidate('I DoNt KnOw WhAt tO WrItE'), 'k dQnT kNqW wHcT Tq wRkTg')){quit('no', 1)}
}
test_humaneval()