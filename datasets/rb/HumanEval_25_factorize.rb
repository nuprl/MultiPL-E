# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
def factorize(n)
  factors = []
  i = 2
  while i <= n
    if n % i == 0
      factors << i
      n /= i
    else
      i += 1
    end
  end
  factors
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_factorize
    candidate = method(:factorize)
    assert_equal([2], candidate.call(2))
    assert_equal([2, 2], candidate.call(4))
    assert_equal([2, 2, 2], candidate.call(8))
    assert_equal([3, 19], candidate.call(57))
    assert_equal([3, 3, 19, 19], candidate.call(3249))
    assert_equal([3, 3, 3, 19, 19, 19], candidate.call(185193))
    assert_equal([3, 19, 19, 19], candidate.call(20577))
    assert_equal([2, 3, 3], candidate.call(18))
  end
end
