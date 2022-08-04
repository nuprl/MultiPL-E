# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# >>> choose_num(12, 15)
# 14
# >>> choose_num(13, 12)
# -1
choose_num <- function(x, y) {
    if (x>y) {
        return(-1)
    }
    else if (x==y) {
        if (x%%2==0) {
            return(x)
        }
        else {
            return(-1)
        }
    }
    else {
        if (y%%2==0) {
            return(y)
        }
        else {
            return(choose_num(x+1, y))
        }
    }
}
choose_num(12, 15)
choose_num(13, 12)
choose_num(12, 12)
choose_num(11, 12)
choose_num(12, 11)


test_humaneval <- function() {
candidate <- choose_num
    if(!identical(candidate(12, 15), 14)){quit('no', 1)}
    if(!identical(candidate(13, 12), -1)){quit('no', 1)}
    if(!identical(candidate(33, 12354), 12354)){quit('no', 1)}
    if(!identical(candidate(5234, 5233), -1)){quit('no', 1)}
    if(!identical(candidate(6, 29), 28)){quit('no', 1)}
    if(!identical(candidate(27, 10), -1)){quit('no', 1)}
    if(!identical(candidate(7, 7), -1)){quit('no', 1)}
    if(!identical(candidate(546, 546), 546)){quit('no', 1)}
}
test_humaneval()