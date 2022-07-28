# The Brazilian factorial is defined as:
# brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
# where n > 0
# For example:
# >>> special_factorial(4)
# 288
# The function will receive an integer as input and should return the special
# factorial of this integer.
def special_factorial(n)
  if n == 0
    return 1
  else
    return n * special_factorial(n-1)
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_special_factorial
    candidate = method(:special_factorial)
    assert_equal(288, candidate.call(4))
    assert_equal(34560, candidate.call(5))
    assert_equal(125411328000, candidate.call(7))
    assert_equal(1, candidate.call(1))
  end
end
