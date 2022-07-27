# Return the largest prime factor of n. Assume n > 1 and is not a prime.
# >>> largest_prime_factor(13195)
# 29
# >>> largest_prime_factor(2048)
# 2
def largest_prime_factor(n)
  i = 2
  while i < n
    if n % i == 0
      n /= i
    else
      i += 1
    end
  end
  n
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_largest_prime_factor
    candidate = method(:largest_prime_factor)
    assert_equal(5, candidate.call(15))
    assert_equal(3, candidate.call(27))
    assert_equal(7, candidate.call(63))
    assert_equal(11, candidate.call(330))
    assert_equal(29, candidate.call(13195))
  end
end
