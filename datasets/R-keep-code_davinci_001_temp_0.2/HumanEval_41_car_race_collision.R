# Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
car_race_collision <- function(n)
{
    # Initialize a matrix of zeros.
    # Each row represents a car.
    # Each column represents a time.
    # The value of each cell is 1 if the car is moving left to right, and -1 if the car
    # is moving right to left.
    cars <- matrix(0, nrow = n, ncol = n)
    for (i in 1:n)
    {
        cars[i,] <- ifelse(1:n %% 2 == 0, 1, -1)
    }
    
    # Initialize a vector of zeros.
    # Each element represents the number of collisions that a car has.
    collisions <- rep(0, n)
    
    # Iterate through each time.
    for (t in 1:n)
    {
        # Iterate through each car.
        for (i in 1:n)
        {
            # If the car is moving left to right, and it hits a car that's moving right to left,
            # then it has collided.
            if (cars[i,t] == 1 & cars[i,t+1] == -1)
            {
                collisions[i] <- collisions[i] + 1
            }
        }
    }
    
    # Return the sum of the number of collisions for all cars.
    return(sum(collisions))

test_humaneval <- function() {
candidate <- car_race_collision
    if(!identical(candidate(2), 4)){quit('no', 1)}
    if(!identical(candidate(3), 9)){quit('no', 1)}
    if(!identical(candidate(4), 16)){quit('no', 1)}
    if(!identical(candidate(8), 64)){quit('no', 1)}
    if(!identical(candidate(10), 100)){quit('no', 1)}
}