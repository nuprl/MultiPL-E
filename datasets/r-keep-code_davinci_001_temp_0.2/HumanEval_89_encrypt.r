# Create a function encrypt that takes a string as an argument and
# returns a string encrypted with the alphabet being rotated. 
# The alphabet should be rotated in a manner such that the letters 
# shift down by two multiplied to two places.
# For example:
# encrypt('hi') returns 'lm'
# encrypt('asdfghjkl') returns 'ewhjklnop'
# encrypt('gf') returns 'kj'
# encrypt('et') returns 'ix'
encrypt <- function(s) {
    alphabet <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]
    alphabet <- alphabet[-c(1:2)]

test_humaneval <- function() {
candidate <- encrypt
    if(!identical(candidate('hi'), 'lm')){quit('no', 1)}
    if(!identical(candidate('asdfghjkl'), 'ewhjklnop')){quit('no', 1)}
    if(!identical(candidate('gf'), 'kj')){quit('no', 1)}
    if(!identical(candidate('et'), 'ix')){quit('no', 1)}
    if(!identical(candidate('faewfawefaewg'), 'jeiajeaijeiak')){quit('no', 1)}
    if(!identical(candidate('hellomyfriend'), 'lippsqcjvmirh')){quit('no', 1)}
    if(!identical(candidate('dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh'), 'hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl')){quit('no', 1)}
    if(!identical(candidate('a'), 'e')){quit('no', 1)}
}
test_humaneval()