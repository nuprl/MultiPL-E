# Create a function that returns True if the last character
# of a given string is an alphabetical character and is not
# a part of a word, and False otherwise.
# Note: "word" is a group of characters separated by space.
# Examples:
# >>> check_if_last_char_is_a_letter("apple pie") 
# False
# >>> check_if_last_char_is_a_letter("apple pi e") 
# True
# >>> check_if_last_char_is_a_letter("apple pi e ") 
# False
# >>> check_if_last_char_is_a_letter("") 
# False
check_if_last_char_is_a_letter <- function(txt) {
    if (length(txt) == 0) {
        return(FALSE)
    }
    if (nchar(txt) == 1) {
        return(TRUE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == "") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt), nchar(txt)) == " ") {
        return(FALSE)
    }
    if (substr(txt, nchar(txt

test_humaneval <- function() {
candidate <- check_if_last_char_is_a_letter
    if(!identical(candidate('apple'), FALSE)){quit('no', 1)}
    if(!identical(candidate('apple pi e'), TRUE)){quit('no', 1)}
    if(!identical(candidate('eeeee'), FALSE)){quit('no', 1)}
    if(!identical(candidate('A'), TRUE)){quit('no', 1)}
    if(!identical(candidate('Pumpkin pie '), FALSE)){quit('no', 1)}
    if(!identical(candidate('Pumpkin pie 1'), FALSE)){quit('no', 1)}
    if(!identical(candidate(''), FALSE)){quit('no', 1)}
    if(!identical(candidate('eeeee e '), FALSE)){quit('no', 1)}
    if(!identical(candidate('apple pie'), FALSE)){quit('no', 1)}
    if(!identical(candidate('apple pi e '), FALSE)){quit('no', 1)}
}
test_humaneval()