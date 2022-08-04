# Given the lengths of the three sides of a triangle. Return the area of
# the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
# Otherwise return -1
# Three sides make a valid triangle when the sum of any two sides is greater 
# than the third side.
# Example:
# >>> triangle_area(3, 4, 5)
# 6.00
# >>> triangle_area(1, 2, 10)
# -1
triangle_area <- function(a, b, c) {
    if (a + b > c && a + c > b && b + c > a) {
        return(round(0.5 * (a + b + c), 2))
    } else {
        return(-1)
    }
}


test_humaneval <- function() {
candidate <- triangle_area
    if(!identical(candidate(3, 4, 5), 6.0)){quit('no', 1)}
    if(!identical(candidate(1, 2, 10), -1)){quit('no', 1)}
    if(!identical(candidate(4, 8, 5), 8.18)){quit('no', 1)}
    if(!identical(candidate(2, 2, 2), 1.73)){quit('no', 1)}
    if(!identical(candidate(1, 2, 3), -1)){quit('no', 1)}
    if(!identical(candidate(10, 5, 7), 16.25)){quit('no', 1)}
    if(!identical(candidate(2, 6, 3), -1)){quit('no', 1)}
    if(!identical(candidate(1, 1, 1), 0.43)){quit('no', 1)}
    if(!identical(candidate(2, 2, 10), -1)){quit('no', 1)}
}
test_humaneval()