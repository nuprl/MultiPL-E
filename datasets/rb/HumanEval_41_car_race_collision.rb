# Imagine a road that's a perfectly straight infinitely long line.
# n cars are driving left to right;  simultaneously, a different set of n cars
# are driving right to left.   The two sets of cars start out being very far from
# each other.  All cars move in the same speed.  Two cars are said to collide
# when a car that's moving left to right hits a car that's moving right to left.
# However, the cars are infinitely sturdy and strong; as a result, they continue moving
# in their trajectory as if they did not collide.
# This function outputs the number of such collisions.
def car_race_collision(n)
  # n is the number of cars
  # The cars are moving in the same direction, so we can just count the number of
  # collisions.
  # We can use a hash to store the number of cars that have collided with each car.
  # If a car has collided with another car, then it will be in the hash.
  # If a car has not collided with another car, then it will not be in the hash.
  # If a car has collided with another car, then it will be in the hash.
  # If a car has not collided with another car, then it will not be in the hash.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.
  # We can use this hash to count the number of collisions.


require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_car_race_collision
    candidate = method(:car_race_collision)
    assert_equal(4, candidate.call(2))
    assert_equal(9, candidate.call(3))
    assert_equal(16, candidate.call(4))
    assert_equal(64, candidate.call(8))
    assert_equal(100, candidate.call(10))
  end
end
