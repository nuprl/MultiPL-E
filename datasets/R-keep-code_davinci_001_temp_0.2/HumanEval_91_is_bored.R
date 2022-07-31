# You'll be given a string of words, and your task is to count the number
# of boredoms. A boredom is a sentence that starts with the word "I".
# Sentences are delimited by '.', '?' or '!'.
# For example:
# >>> is_bored("Hello world")
# 0
# >>> is_bored("The sky is blue. The sun is shining. I love this weather")
# 1
is_bored <- function(S) {
    boredoms <- 0
    sentences <- strsplit(S, split="[.?!]")
    for (sentence in sentences) {
        if (sentence[1] == "I") {
            boredoms <- boredoms + 1
        }
    }
    boredoms
}


test_humaneval <- function() {
candidate <- is_bored
    if(!identical(candidate('Hello world'), 0)){quit('no', 1)}
    if(!identical(candidate('Is the sky blue?'), 0)){quit('no', 1)}
    if(!identical(candidate('I love It !'), 1)){quit('no', 1)}
    if(!identical(candidate('bIt'), 0)){quit('no', 1)}
    if(!identical(candidate('I feel good today. I will be productive. will kill It'), 2)){quit('no', 1)}
    if(!identical(candidate('You and I are going for a walk'), 0)){quit('no', 1)}
}
test_humaneval()