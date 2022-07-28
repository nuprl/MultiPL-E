# Given a list of numbers, return the sum of squares of the numbers
# in the list that are odd. Ignore numbers that are negative or not integers.
# double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
# double_the_difference([-1, -2, 0]) == 0
# double_the_difference([9, -2]) == 81
# double_the_difference([0]) == 0  
# If the input list is empty, return 0.
def double_the_difference(lst)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_double_the_difference
    candidate = method(:double_the_difference)
    assert_equal(0, candidate.call([]))
    assert_equal(25, candidate.call([5.0, 4.0]))
    assert_equal(0, candidate.call([0.1, 0.2, 0.3]))
    assert_equal(0, candidate.call([-10.0, -20.0, -30.0]))
    assert_equal(0, candidate.call([-1.0, -2.0, 8.0]))
    assert_equal(34, candidate.call([0.2, 3.0, 5.0]))
    assert_equal(165, candidate.call([-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]))
  end
end
