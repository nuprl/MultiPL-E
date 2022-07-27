# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# for x_or_y(7, 34, 12) == 34
# for x_or_y(15, 8, 5) == 5
def x_or_y(n, x, y)
  if is_prime(n)
    return x
  else
    return y
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_x_or_y
    candidate = method(:x_or_y)
    assert_equal(34, candidate.call(7, 34, 12))
    assert_equal(5, candidate.call(15, 8, 5))
    assert_equal(33, candidate.call(3, 33, 5212))
    assert_equal(3, candidate.call(1259, 3, 52))
    assert_equal(-1, candidate.call(7919, -1, 12))
    assert_equal(583, candidate.call(3609, 1245, 583))
    assert_equal(129, candidate.call(91, 56, 129))
    assert_equal(1234, candidate.call(6, 34, 1234))
    assert_equal(0, candidate.call(1, 2, 0))
    assert_equal(2, candidate.call(2, 2, 0))
  end
end
