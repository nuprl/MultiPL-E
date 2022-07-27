# Given list of numbers (of at least two elements), apply a linear transform to that list,
# such that the smallest number will become 0 and the largest will become 1
# >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# [0.0, 0.25, 0.5, 0.75, 1.0]
def rescale_to_unit(numbers)
  min = numbers.min
  max = numbers.max
  numbers.map { |n| (n - min) / (max - min) }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_rescale_to_unit
    candidate = method(:rescale_to_unit)
    assert_equal([0.0, 1.0], candidate.call([2.0, 49.9]))
    assert_equal([1.0, 0.0], candidate.call([100.0, 49.9]))
    assert_equal([0.0, 0.25, 0.5, 0.75, 1.0], candidate.call([1.0, 2.0, 3.0, 4.0, 5.0]))
    assert_equal([0.25, 0.0, 1.0, 0.5, 0.75], candidate.call([2.0, 1.0, 5.0, 3.0, 4.0]))
    assert_equal([0.25, 0.0, 1.0, 0.5, 0.75], candidate.call([12.0, 11.0, 15.0, 13.0, 14.0]))
  end
end
