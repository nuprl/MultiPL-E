# Your task is to write a function that returns true if a number x is a simple
# power of n and false in other cases.
# x is a simple power of n if n**int=x
# For example:
# is_simple_power(1, 4) => true
# is_simple_power(2, 2) => true
# is_simple_power(8, 2) => true
# is_simple_power(3, 2) => false
# is_simple_power(3, 1) => false
# is_simple_power(5, 3) => false
def is_simple_power(x, n)
  if x == 1
    return true
  elsif x == n
    return true
  elsif x % n == 0
    return is_simple_power(x/n, n)
  else
    return false
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_simple_power
    candidate = method(:is_simple_power)
    assert_equal(true, candidate.call(16, 2))
    assert_equal(false, candidate.call(143214, 16))
    assert_equal(true, candidate.call(4, 2))
    assert_equal(true, candidate.call(9, 3))
    assert_equal(true, candidate.call(16, 4))
    assert_equal(false, candidate.call(24, 2))
    assert_equal(false, candidate.call(128, 4))
    assert_equal(false, candidate.call(12, 6))
    assert_equal(true, candidate.call(1, 1))
    assert_equal(true, candidate.call(1, 12))
  end
end
