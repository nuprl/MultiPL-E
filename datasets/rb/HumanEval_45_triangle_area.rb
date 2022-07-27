# Given length of a side and height return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
def triangle_area(a, h)
  a * h / 2
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_triangle_area
    candidate = method(:triangle_area)
    assert_equal(7.5, candidate.call(5, 3))
    assert_equal(2.0, candidate.call(2, 2))
    assert_equal(40.0, candidate.call(10, 8))
  end
end
