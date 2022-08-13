# ---- HumanEval_41_car_race_collision --- completion 53 ---- 
def car_race_collision(n: int) -> int:
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
    # The idea is to sort the cars by their starting positions.
    # Then, we can simulate the race by iterating through the cars
    # from left to right, and counting the number of cars that are
    # moving right to left.
    #
    # The time complexity is O(n log n) because of the sorting.
    # The space complexity is O(n) because of the sorting.
    #
    # The time complexity can be improved to O(n) by using a
    # counting sort.  The space complexity can be improved to
    # O(1) by using a bucket sort.
    left_to_right = [0] * n
    right_to_left = [0] * n
    for i in range(n):
        left_to_right[i] = int(input())
        right_to_left[i] = int(input())
    left_to_right.sort()
    right_to_left.sort()
    collisions = 0
    left_to_right_index = 0
    right_to_left_index = 0
    while left_to_right_index < n and right_to_left_index < n:
        if left_to_right[left_to_right_index] < right_to_left[right_to_left_index]:
            collisions += right_to_left_index
            left_to_right_index += 1
        else:
            right_to_left_index += 1
    return collisions


def check(candidate):
    assert candidate(2) == 4
    assert candidate(3) == 9
    assert candidate(4) == 16
    assert candidate(8) == 64
    assert candidate(10) == 100

def test_check():
    check(car_race_collision)

test_check()

# status = Exception
# exit_code = -1
''' stderr = 
Traceback (most recent call last):
  File "/tmp/tmpqv_ewczw.py", line 53, in <module>
    test_check()
  File "/tmp/tmpqv_ewczw.py", line 51, in test_check
    check(car_race_collision)
  File "/tmp/tmpqv_ewczw.py", line 44, in check
    assert candidate(2) == 4
  File "/tmp/tmpqv_ewczw.py", line 27, in car_race_collision
    left_to_right[i] = int(input())
EOFError: EOF when reading a line

'''
''' stdout = 

'''





