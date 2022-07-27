# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# choose_num(12, 15) = 14
# choose_num(13, 12) = -1
def choose_num(x, y)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_choose_num
    candidate = method(:choose_num)
    assert_equal(14, candidate.call(12, 15))
    assert_equal(-1, candidate.call(13, 12))
    assert_equal(12354, candidate.call(33, 12354))
    assert_equal(-1, candidate.call(5234, 5233))
    assert_equal(28, candidate.call(6, 29))
    assert_equal(-1, candidate.call(27, 10))
    assert_equal(-1, candidate.call(7, 7))
    assert_equal(546, candidate.call(546, 546))
  end
end
