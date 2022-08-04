# Given the lengths of the three sides of a triangle. Return True if the three
# sides form a right-angled triangle, False otherwise.
# A right-angled triangle is a triangle in which one angle is right angle or 
# 90 degree.
# Example:
# >>> right_angle_triangle(3, 4, 5) 
# True
# >>> right_angle_triangle(1, 2, 3) 
# False
right_angle_triangle <- function(a, b, c) {
    if (a > b && a > c) {
        if (b*b + c*c == a*a) {
            return(TRUE)
        } else {
            return(FALSE)
        }
    } else if (b > a && b > c) {
        if (a*a + c*c == b*b) {
            return(TRUE)
        } else {
            return(FALSE)
        }
    } else if (c > a && c > b) {
        if (a*a + b*b == c*c) {
            return(TRUE)
        } else {
            return(FALSE)
        }
    }
}
right_angle_triangle(3, 4, 5)
right_angle_triangle(1, 2, 3)


test_humaneval <- function() {
candidate <- right_angle_triangle
    if(!identical(candidate(3, 4, 5), TRUE)){quit('no', 1)}
    if(!identical(candidate(1, 2, 3), FALSE)){quit('no', 1)}
    if(!identical(candidate(10, 6, 8), TRUE)){quit('no', 1)}
    if(!identical(candidate(2, 2, 2), FALSE)){quit('no', 1)}
    if(!identical(candidate(7, 24, 25), TRUE)){quit('no', 1)}
    if(!identical(candidate(10, 5, 7), FALSE)){quit('no', 1)}
    if(!identical(candidate(5, 12, 13), TRUE)){quit('no', 1)}
    if(!identical(candidate(15, 8, 17), TRUE)){quit('no', 1)}
    if(!identical(candidate(48, 55, 73), TRUE)){quit('no', 1)}
    if(!identical(candidate(1, 1, 1), FALSE)){quit('no', 1)}
    if(!identical(candidate(2, 2, 10), FALSE)){quit('no', 1)}
}
test_humaneval()