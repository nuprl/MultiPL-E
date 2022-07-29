# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
words_string <- function(s) {
    # your code here
}


test_humaneval <- function() {
candidate <- words_string
    if(!identical(candidate('Hi, my name is John'), list('Hi', 'my', 'name', 'is', 'John'))){quit('no', 1)}
    if(!identical(candidate('One, two, three, four, five, six'), list('One', 'two', 'three', 'four', 'five', 'six'))){quit('no', 1)}
    if(!identical(candidate('Hi, my name'), list('Hi', 'my', 'name'))){quit('no', 1)}
    if(!identical(candidate('One,, two, three, four, five, six,'), list('One', 'two', 'three', 'four', 'five', 'six'))){quit('no', 1)}
    if(!identical(candidate(''), list())){quit('no', 1)}
    if(!identical(candidate('ahmed     , gamal'), list('ahmed', 'gamal'))){quit('no', 1)}
}
test_humaneval()