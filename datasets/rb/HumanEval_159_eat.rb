# You're a hungry rabbit, and you already have eaten a certain number of carrots,
# but now you need to eat more carrots to complete the day's meals.
# you should return an array of [ total number of eaten carrots after your meals,
# the number of carrots left after your meals ]
# if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
# Example:
# * eat(5, 6, 10) -> [11, 4]
# * eat(4, 8, 9) -> [12, 1]
# * eat(1, 10, 10) -> [11, 0]
# * eat(2, 11, 5) -> [7, 0]
# Variables:
# @number : integer
# the number of carrots that you have eaten.
# @need : integer
# the number of carrots that you need to eat.
# @remaining : integer
# the number of remaining carrots thet exist in stock
# Constrain:
# * 0 <= number <= 1000
# * 0 <= need <= 1000
# * 0 <= remaining <= 1000
# Have fun :)
def eat(number, need, remaining)
  if number >= need
    return [number - need + remaining, 0]
  else
    return [remaining, number]
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_eat
    candidate = method(:eat)
    assert_equal([11, 4], candidate.call(5, 6, 10))
    assert_equal([12, 1], candidate.call(4, 8, 9))
    assert_equal([11, 0], candidate.call(1, 10, 10))
    assert_equal([7, 0], candidate.call(2, 11, 5))
    assert_equal([9, 2], candidate.call(4, 5, 7))
    assert_equal([5, 0], candidate.call(4, 5, 1))
  end
end
