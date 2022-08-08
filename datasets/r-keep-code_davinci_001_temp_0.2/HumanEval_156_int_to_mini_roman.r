# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
int_to_mini_roman <- function(number) {
    # your code here
}


test_humaneval <- function() {
candidate <- int_to_mini_roman
    if(!identical(candidate(19), 'xix')){quit('no', 1)}
    if(!identical(candidate(152), 'clii')){quit('no', 1)}
    if(!identical(candidate(251), 'ccli')){quit('no', 1)}
    if(!identical(candidate(426), 'cdxxvi')){quit('no', 1)}
    if(!identical(candidate(500), 'd')){quit('no', 1)}
    if(!identical(candidate(1), 'i')){quit('no', 1)}
    if(!identical(candidate(4), 'iv')){quit('no', 1)}
    if(!identical(candidate(43), 'xliii')){quit('no', 1)}
    if(!identical(candidate(90), 'xc')){quit('no', 1)}
    if(!identical(candidate(94), 'xciv')){quit('no', 1)}
    if(!identical(candidate(532), 'dxxxii')){quit('no', 1)}
    if(!identical(candidate(900), 'cm')){quit('no', 1)}
    if(!identical(candidate(994), 'cmxciv')){quit('no', 1)}
    if(!identical(candidate(1000), 'm')){quit('no', 1)}
}
test_humaneval()