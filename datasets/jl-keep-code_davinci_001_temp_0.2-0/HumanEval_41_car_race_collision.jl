"""
    Imagine a road that's a perfectly straight infinitely long line.
    n cars are driving left to right;  simultaneously, a different set of n cars
    are driving right to left.   The two sets of cars start out being very far from
    each other.  All cars move in the same speed.  Two cars are said to collide
    when a car that's moving left to right hits a car that's moving right to left.
    However, the cars are infinitely sturdy and strong; as a result, they continue moving
    in their trajectory as if they did not collide.

    This function outputs the number of such collisions.
    """
function car_race_collision(n::Int64)::Int64 
    # Initialize the number of collisions to zero.
    num_collisions = 0
    
    # Initialize the positions of the cars.
    # The first n positions are for the cars moving left to right.
    # The second n positions are for the cars moving right to left.
    # The positions are initialized to be very far from each other.
    positions = zeros(Int64, 2n)
    positions[1:n] .= -1000000
    positions[n+1:end] .= 1000000
    
    # Initialize the velocities of the cars.
    # The first n velocities are for the cars moving left to right.
    # The second n velocities are for the cars moving right to left.
    # The velocities are initialized to be very slow.
    velocities = zeros(Int64, 2n)
    velocities[1:n] .= -1
    velocities[n+1:end] .= 1
    
    # Iterate until all cars have passed each other.
    while true
        # Update the positions of the cars.
        positions .+= velocities
        
        # Check if any collisions have occurred.
        # If a collision has occurred, then increase the number of collisions by one.
        # If a collision has not occurred, then break out of the while loop.
        if positions[1] > positions[n]
            num_collisions += 1
        else
            break
        end
    end
    
    # Return the number of collisions.
    return num_collisions
end

using Test

@testset begin

candidate = car_race_collision;
	@test(candidate(2) == 4)
	@test(candidate(3) == 9)
	@test(candidate(4) == 16)
	@test(candidate(8) == 64)
	@test(candidate(10) == 100)
end
