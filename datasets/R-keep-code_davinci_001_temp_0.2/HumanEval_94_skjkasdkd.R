# You are given a list of integers.
# You need to find the largest prime value and return the sum of its digits.
# Examples:
# For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
# For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
# For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
# For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
# For lst = [0,81,12,3,1,21] the output should be 3
# For lst = [0,8,1,2,1,7] the output should be 7
skjkasdkd <- function(lst) {
    lst <- sort(lst, decreasing = TRUE)
    lst <- lst[lst %% 2 != 0]
    lst <- lst[lst %% 3 != 0]
    lst <- lst[lst %% 5 != 0]
    lst <- lst[lst %% 7 != 0]
    lst <- lst[lst %% 11 != 0]
    lst <- lst[lst %% 13 != 0]
    lst <- lst[lst %% 17 != 0]
    lst <- lst[lst %% 19 != 0]
    lst <- lst[lst %% 23 != 0]
    lst <- lst[lst %% 29 != 0]
    lst <- lst[lst %% 31 != 0]
    lst <- lst[lst %% 37 != 0]
    lst <- lst[lst %% 41 != 0]
    lst <- lst[lst %% 43 != 0]
    lst <- lst[lst %% 47 != 0]
    lst <- lst[lst %% 53 != 0]
    lst <- lst[lst %% 59 != 0]
    lst <- lst[lst %% 61 != 0]
    lst <- lst[lst %% 67 != 0]
    lst <- lst[lst %% 71 != 0]
    lst <- lst[lst %% 73 != 0]
    lst <- lst[lst %% 79 != 0]
    lst <- lst[lst %% 83 != 0]
    lst <- lst[lst %% 89 != 0]
    lst <- lst[lst %% 97 != 0]
    lst <- lst[lst %% 101 != 0]
    lst <- lst[lst %% 103 != 0]
    lst <- lst[lst %% 107 != 0]
    lst <- lst[lst %% 109 != 0]
    lst <- lst[lst %% 113 != 0]
    lst <- lst[lst %% 127 != 0]
    lst <- lst[lst %% 131 != 0]
    lst <-

test_humaneval <- function() {
candidate <- skjkasdkd
    if(!identical(candidate(c(0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3)), 10)){quit('no', 1)}
    if(!identical(candidate(c(1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1)), 25)){quit('no', 1)}
    if(!identical(candidate(c(1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3)), 13)){quit('no', 1)}
    if(!identical(candidate(c(0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6)), 11)){quit('no', 1)}
    if(!identical(candidate(c(0, 81, 12, 3, 1, 21)), 3)){quit('no', 1)}
    if(!identical(candidate(c(0, 8, 1, 2, 1, 7)), 7)){quit('no', 1)}
    if(!identical(candidate(c(8191)), 19)){quit('no', 1)}
    if(!identical(candidate(c(8191, 123456, 127, 7)), 19)){quit('no', 1)}
    if(!identical(candidate(c(127, 97, 8192)), 10)){quit('no', 1)}
}
test_humaneval()