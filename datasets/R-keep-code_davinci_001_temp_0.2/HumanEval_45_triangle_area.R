# Given length of a side and high return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
triangle_area <- function(a, h) {
    return(0.5 * a * h)
}


test_humaneval <- function() {
candidate <- triangle_area
    if(!identical(candidate(5, 3), 7.5)){quit('no', 1)}
    if(!identical(candidate(2, 2), 2.0)){quit('no', 1)}
    if(!identical(candidate(10, 8), 40.0)){quit('no', 1)}
}
test_humaneval()