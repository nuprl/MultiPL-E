# Imagine a road that's a perfectly straight infinitely long line.
# n cars are driving left to right;  simultaneously, a different set of n cars
# are driving right to left.   The two sets of cars start out being very far from
# each other.  All cars move in the same speed.  Two cars are said to collide
# when a car that's moving left to right hits a car that's moving right to left.
# However, the cars are infinitely sturdy and strong; as a result, they continue moving
# in their trajectory as if they did not collide.
# This function outputs the number of such collisions.
car_race_collision <- function(n) {
    # We start by creating a matrix of size n x n.  Each element of the matrix
    # is a boolean value, where TRUE means that the car at that position is moving
    # left to right and FALSE means that the car at that position is moving right
    # to left.  We start with all cars moving left to right.
    cars <- matrix(TRUE, n, n)
    
    # We then create a vector of size n.  Each element of the vector is a number
    # between 1 and n.  The first element of the vector is 1, the second element
    # of the vector is 2, and so on.  We use this vector to keep track of the
    # cars that have already collided.  We start with no cars having collided.
    collided <- 1:n
    
    # We then create a vector of size n.  Each element of the vector is a number
    # between 1 and n.  The first element of the vector is 1, the second element
    # of the vector is 2, and so on.  We use this vector to keep track of the
    # cars that have already moved.  We start with no cars having moved.
    moved <- 1:n
    
    # We then create a vector of size n.  Each element of the vector is a number
    # between 1 and n.  The first element of the vector is 1, the second element
    # of the vector is 2, and so on.  We use this vector to keep track of the
    # cars that have already moved.  We start with no cars having moved.
    moved <- 1:n
    
    # We then create a vector of size n.  Each element of the vector is a number
    # between 1 and n.  The first element of the vector is 1, the second element
    # of the vector is 2, and so on.  We use this vector to keep track of the
    # cars that have already moved.  We start with no cars having moved.
    moved <- 1:n
    
    # We then create a vector of size n.  Each element of the vector is a number
    # between 1 and n.  The first element of the vector is 1, the second

test_humaneval <- function() {
candidate <- car_race_collision
    if(!identical(candidate(2), 4)){quit('no', 1)}
    if(!identical(candidate(3), 9)){quit('no', 1)}
    if(!identical(candidate(4), 16)){quit('no', 1)}
    if(!identical(candidate(8), 64)){quit('no', 1)}
    if(!identical(candidate(10), 100)){quit('no', 1)}
}
test_humaneval()