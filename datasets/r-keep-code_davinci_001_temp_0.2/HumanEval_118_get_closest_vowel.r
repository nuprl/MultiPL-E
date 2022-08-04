# You are given a word. Your task is to find the closest vowel that stands between 
# two consonants from the right side of the word (case sensitive).
# Vowels in the beginning and ending doesn't count. Return empty string if you didn't
# find any vowel met the above condition. 
# You may assume that the given string contains English letter only.
# Example:
# >>> get_closest_vowel("yogurt")
# "u"
# >>> get_closest_vowel("FULL")
# "U"
# >>> get_closest_vowel("quick")
# ""
# >>> get_closest_vowel("ab")
# ""
get_closest_vowel <- function(word) {
    vowels <- c("a", "e", "i", "o", "u")
    consonants <- c("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z")
    word <- tolower(word)
    if (nchar(word) < 3) {
        return("")
    }
    for (i in seq(1, nchar(word))) {
        if (word[i] %in% vowels) {
            if (word[i - 1] %in% consonants && word[i + 1] %in% consonants) {
                return(word[i])
            }
        }
    }
    return("")
}
get_closest_vowel("yogurt")
get_closest_vowel("FULL")
get_closest_vowel("quick")
get_closest_vowel("ab")


test_humaneval <- function() {
candidate <- get_closest_vowel
    if(!identical(candidate('yogurt'), 'u')){quit('no', 1)}
    if(!identical(candidate('full'), 'u')){quit('no', 1)}
    if(!identical(candidate('easy'), '')){quit('no', 1)}
    if(!identical(candidate('eAsy'), '')){quit('no', 1)}
    if(!identical(candidate('ali'), '')){quit('no', 1)}
    if(!identical(candidate('bad'), 'a')){quit('no', 1)}
    if(!identical(candidate('most'), 'o')){quit('no', 1)}
    if(!identical(candidate('ab'), '')){quit('no', 1)}
    if(!identical(candidate('ba'), '')){quit('no', 1)}
    if(!identical(candidate('quick'), '')){quit('no', 1)}
    if(!identical(candidate('anime'), 'i')){quit('no', 1)}
    if(!identical(candidate('Asia'), '')){quit('no', 1)}
    if(!identical(candidate('Above'), 'o')){quit('no', 1)}
}
test_humaneval()