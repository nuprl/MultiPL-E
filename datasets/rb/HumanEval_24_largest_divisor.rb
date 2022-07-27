# For a given number n, find the largest number that divides n evenly, smaller than n
# >>> largest_divisor(15)
# 5
def largest_divisor(n)
  divisor = n - 1
  while divisor > 0
    if n % divisor == 0
      return divisor
    end
    divisor -= 1
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_largest_divisor
    candidate = method(:largest_divisor)
    assert_equal(1, candidate.call(3))
    assert_equal(1, candidate.call(7))
    assert_equal(5, candidate.call(10))
    assert_equal(50, candidate.call(100))
    assert_equal(7, candidate.call(49))
  end
end
