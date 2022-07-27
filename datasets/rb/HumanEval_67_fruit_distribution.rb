# In this task, you will be given a string that represents a number of apples and oranges 
# that are distributed in a basket of fruit this basket contains 
# apples, oranges, and mango fruits. Given the string that represents the total number of 
# the oranges and apples and an integer that represent the total number of the fruits 
# in the basket return the number of the mango fruits in the basket.
# for examble:
# fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
# fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
# fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
# fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
def fruit_distribution(s, n)
  s.split.map(&:to_i).reduce(:+) - s.split.map(&:to_i).reduce(:+) - n
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fruit_distribution
    candidate = method(:fruit_distribution)
    assert_equal(8, candidate.call('5 apples and 6 oranges', 19))
    assert_equal(10, candidate.call('5 apples and 6 oranges', 21))
    assert_equal(2, candidate.call('0 apples and 1 oranges', 3))
    assert_equal(2, candidate.call('1 apples and 0 oranges', 3))
    assert_equal(95, candidate.call('2 apples and 3 oranges', 100))
    assert_equal(0, candidate.call('2 apples and 3 oranges', 5))
    assert_equal(19, candidate.call('1 apples and 100 oranges', 120))
  end
end
