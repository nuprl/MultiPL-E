# Given the lengths of the three sides of a triangle. Return True if the three
# sides form a right-angled triangle, False otherwise.
# A right-angled triangle is a triangle in which one angle is right angle or 
# 90 degree.
# Example:
# right_angle_triangle(3, 4, 5) == True
# right_angle_triangle(1, 2, 3) == False
def right_angle_triangle(a, b, c)
  a**2 + b**2 == c**2
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_right_angle_triangle
    candidate = method(:right_angle_triangle)
    assert_equal(true, candidate.call(3, 4, 5))
    assert_equal(false, candidate.call(1, 2, 3))
    assert_equal(true, candidate.call(10, 6, 8))
    assert_equal(false, candidate.call(2, 2, 2))
    assert_equal(true, candidate.call(7, 24, 25))
    assert_equal(false, candidate.call(10, 5, 7))
    assert_equal(true, candidate.call(5, 12, 13))
    assert_equal(true, candidate.call(15, 8, 17))
    assert_equal(true, candidate.call(48, 55, 73))
    assert_equal(false, candidate.call(1, 1, 1))
    assert_equal(false, candidate.call(2, 2, 10))
  end
end
