# Given the lengths of the three sides of a triangle. Return the area of
# the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
# Otherwise return -1
# Three sides make a valid triangle when the sum of any two sides is greater 
# than the third side.
# Example:
# triangle_area(3, 4, 5) == 6.00
# triangle_area(1, 2, 10) == -1
def triangle_area(a, b, c)
  return -1 if a + b <= c || a + c <= b || b + c <= a
  s = (a + b + c) / 2.0
  Math.sqrt(s * (s - a) * (s - b) * (s - c))
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_triangle_area
    candidate = method(:triangle_area)
    assert_equal(6.0, candidate.call(3, 4, 5))
    assert_equal(-1, candidate.call(1, 2, 10))
    assert_equal(8.18, candidate.call(4, 8, 5))
    assert_equal(1.73, candidate.call(2, 2, 2))
    assert_equal(-1, candidate.call(1, 2, 3))
    assert_equal(16.25, candidate.call(10, 5, 7))
    assert_equal(-1, candidate.call(2, 6, 3))
    assert_equal(0.43, candidate.call(1, 1, 1))
    assert_equal(-1, candidate.call(2, 2, 10))
  end
end
