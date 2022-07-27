# Given a list of positive integers x. return a sorted list of all 
# elements that hasn't any even digit.
# Note: Returned list should be sorted in increasing order.
# For example:
# >>> unique_digits([15, 33, 1422, 1])
# [1, 15, 33]
# >>> unique_digits([152, 323, 1422, 10])
# []
def unique_digits(x)
  x.select { |i| i.to_s.chars.select { |c| c.to_i.even? }.empty? }.sort
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_unique_digits
    candidate = method(:unique_digits)
    assert_equal([1, 15, 33], candidate.call([15, 33, 1422, 1]))
    assert_equal([], candidate.call([152, 323, 1422, 10]))
    assert_equal([111, 151], candidate.call([12345, 2033, 111, 151]))
    assert_equal([31, 135], candidate.call([135, 103, 31]))
  end
end
