# Write a function that returns true if the given number is the multiplication of 3 prime numbers
# and false otherwise.
# Knowing that (a) is less then 100. 
# Example:
# is_multiply_prime(30) == True
# 30 = 2 * 3 * 5
def is_multiply_prime(a)
  (2..a-1).each do |i|
    if a % i == 0 && is_prime(i)
      return true
    end
  end
  return false
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_multiply_prime
    candidate = method(:is_multiply_prime)
    assert_equal(false, candidate.call(5))
    assert_equal(true, candidate.call(30))
    assert_equal(true, candidate.call(8))
    assert_equal(false, candidate.call(10))
    assert_equal(true, candidate.call(125))
    assert_equal(true, candidate.call(105))
    assert_equal(false, candidate.call(126))
    assert_equal(false, candidate.call(729))
    assert_equal(false, candidate.call(891))
    assert_equal(true, candidate.call(1001))
  end
end
