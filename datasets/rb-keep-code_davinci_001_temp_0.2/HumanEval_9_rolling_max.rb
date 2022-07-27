# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
def rolling_max(numbers)
  result = []
  max = 0
  numbers.each do |number|
    if number > max
      max = number
    end
    result << max
  end
  result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_rolling_max
    candidate = method(:rolling_max)
    assert_equal([], candidate.call([]))
    assert_equal([1, 2, 3, 4], candidate.call([1, 2, 3, 4]))
    assert_equal([4, 4, 4, 4], candidate.call([4, 3, 2, 1]))
    assert_equal([3, 3, 3, 100, 100], candidate.call([3, 2, 3, 100, 3]))
  end
end
