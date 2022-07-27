# For a given list of input numbers, calculate Mean Absolute Deviation
# around the mean of this dataset.
# Mean Absolute Deviation is the average absolute difference between each
# element and a centerpoint (mean in this case):
# MAD = average | x - x_mean |
# >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
# 1.0
def mean_absolute_deviation(numbers)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_mean_absolute_deviation
    candidate = method(:mean_absolute_deviation)
    assert_equal(0.5, candidate.call([1.0, 2.0]))
    assert_equal(1.0, candidate.call([1.0, 2.0, 3.0, 4.0]))
    assert_equal(1.2, candidate.call([1.0, 2.0, 3.0, 4.0, 5.0]))
  end
end
