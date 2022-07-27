# Return true if a given number is prime, and false otherwise.
# >>> is_prime(6)
# False
# >>> is_prime(101)
# True
# >>> is_prime(11)
# True
# >>> is_prime(13441)
# True
# >>> is_prime(61)
# True
# >>> is_prime(4)
# False
# >>> is_prime(1)
# False
def is_prime(n)
    if n <= 1
        return false
    end
    for i in 2...n
        if n % i == 0
            return false
        end
    end
    return true
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_prime
    candidate = method(:is_prime)
    assert_equal(false, candidate.call(6))
    assert_equal(true, candidate.call(101))
    assert_equal(true, candidate.call(11))
    assert_equal(true, candidate.call(13441))
    assert_equal(true, candidate.call(61))
    assert_equal(false, candidate.call(4))
    assert_equal(false, candidate.call(1))
    assert_equal(true, candidate.call(5))
    assert_equal(true, candidate.call(11))
    assert_equal(true, candidate.call(17))
    assert_equal(false, candidate.call(85))
    assert_equal(false, candidate.call(77))
    assert_equal(false, candidate.call(255379))
  end
end
