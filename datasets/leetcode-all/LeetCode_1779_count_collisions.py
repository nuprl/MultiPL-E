def count_collisions(directions: str) -> int:
    """
    There are n cars on an infinitely long road. The cars are numbered from 0 to n - 1 from left to right and each car is present at a unique point.
    You are given a 0-indexed string directions of length n. directions[i] can be either 'L', 'R', or 'S' denoting whether the ith car is moving towards the left, towards the right, or staying at its current point respectively. Each moving car has the same speed.
    The number of collisions can be calculated as follows:

    When two cars moving in opposite directions collide with each other, the number of collisions increases by 2.
    When a moving car collides with a stationary car, the number of collisions increases by 1.

    After a collision, the cars involved can no longer move and will stay at the point where they collided. Other than that, cars cannot change their state or direction of motion.
    Return the total number of collisions that will happen on the road.
 
    Example 1:

    Input: directions = "RLRSLL"
    Output: 5
    Explanation:
    The collisions that will happen on the road are:
    - Cars 0 and 1 will collide with each other. Since they are moving in opposite directions, the number of collisions becomes 0 + 2 = 2.
    - Cars 2 and 3 will collide with each other. Since car 3 is stationary, the number of collisions becomes 2 + 1 = 3.
    - Cars 3 and 4 will collide with each other. Since car 3 is stationary, the number of collisions becomes 3 + 1 = 4.
    - Cars 4 and 5 will collide with each other. After car 4 collides with car 3, it will stay at the point of collision and get hit by car 5. The number of collisions becomes 4 + 1 = 5.
    Thus, the total number of collisions that will happen on the road is 5. 

    Example 2:

    Input: directions = "LLRR"
    Output: 0
    Explanation:
    No cars will collide with each other. Thus, the total number of collisions that will happen on the road is 0.
 
    Constraints:

    1 <= directions.length <= 105
    directions[i] is either 'L', 'R', or 'S'.

    """
    ### Canonical solution below ###
    collision_count = 0
    left_count = 0

    for direction in directions:
        if direction == 'L':
            left_count += 1
        elif direction == 'R':
            collision_count += left_count

    return collision_count




### Unit tests below ###
def check(candidate):
	assert candidate("RRR") == 0
	assert candidate("LR") == 1
	assert candidate("SS") == 0
	assert candidate("RRRR") == 0
	assert candidate("LLLL") == 0
	assert candidate("RLR") == 1
	assert candidate("LLLR") == 3
	assert candidate("RLLRL") == 2
	assert candidate("RRRLL") == 0
	assert candidate("RLLRLL") == 2
	assert candidate("S") == 0
	assert candidate("LRRR") == 3
	assert candidate("LRRL") == 2
	assert candidate("RL") == 0
	assert candidate("RRRLR") == 1
	assert candidate("RRRSS") == 0
def test_check():
	check(count_collisions)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
