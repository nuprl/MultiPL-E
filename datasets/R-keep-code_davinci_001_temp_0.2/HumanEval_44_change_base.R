# Change numerical base of input number x to base.
# return string representation after the conversion.
# base numbers are less than 10.
# >>> change_base(8, 3)
# '22'
# >>> change_base(8, 2)
# '1000'
# >>> change_base(7, 2)
# '111'
change_base <- function(x, base) {
    # your code here
}


test_humaneval <- function() {
candidate <- change_base
    if(!identical(candidate(8, 3), '22')){quit('no', 1)}
    if(!identical(candidate(9, 3), '100')){quit('no', 1)}
    if(!identical(candidate(234, 2), '11101010')){quit('no', 1)}
    if(!identical(candidate(16, 2), '10000')){quit('no', 1)}
    if(!identical(candidate(8, 2), '1000')){quit('no', 1)}
    if(!identical(candidate(7, 2), '111')){quit('no', 1)}
    if(!identical(candidate(2, 3), '2')){quit('no', 1)}
    if(!identical(candidate(3, 4), '3')){quit('no', 1)}
    if(!identical(candidate(4, 5), '4')){quit('no', 1)}
    if(!identical(candidate(5, 6), '5')){quit('no', 1)}
    if(!identical(candidate(6, 7), '6')){quit('no', 1)}
    if(!identical(candidate(7, 8), '7')){quit('no', 1)}
}
test_humaneval()