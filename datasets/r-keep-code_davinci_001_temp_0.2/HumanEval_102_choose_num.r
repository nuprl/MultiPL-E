# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# choose_num(12, 15) = 14
# choose_num(13, 12) = -1
choose_num <- function(x, y) {
    if (x < y) {
        if (x % 2 == 0) {
            x
        } else {
            x = x + 1
            while (x < y) {
                if (x % 2 == 0) {
                    return(x)
                } else {
                    x = x + 1
                }
            }
            return(-1)
        }
    } else {
        if (y % 2 == 0) {
            y
        } else {
            y = y + 1
            while (x < y) {
                if (y % 2 == 0) {
                    return(y)
                } else {
                    y = y + 1
                }
            }
            return(-1)
        }
    }
}
choose_num(12, 15)
choose_num(13, 12)
choose_num(12, 12)
choose_num(12, 11)
choose_num(11, 12)
choose_num(1, 2)
choose_num(2, 1)
choose_num(1, 1)
choose_num(0, 1)
choose_num(1, 0)
choose_num(0, 0)
choose_num(0, 2)
choose_num(2, 0)
choose_num(0, 3)
choose_num(3, 0)
choose_num(0, 4)
choose_num(4, 0)
choose_num(0, 5)
choose_num(5, 0)
choose_num(0, 6)
choose_num(6, 0)
choose_num(0, 7)
choose_num(7, 0)
choose_num(0, 8)
choose_num(8, 0)
choose_num(0, 9)
choose_num(9, 0)
choose_num(0, 10)
choose_num(10, 0)
choose_num(0, 11)
choose_num(11, 0)
choose_num(0, 12)
cho

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