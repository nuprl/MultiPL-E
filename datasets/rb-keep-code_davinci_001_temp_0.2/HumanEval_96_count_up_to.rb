# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
def count_up_to(n)
  primes = []
  i = 2
  while i < n
    primes << i if is_prime?(i)
    i += 1
  end
  primes
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_count_up_to
    candidate = method(:count_up_to)
    assert_equal([2, 3], candidate.call(5))
    assert_equal([2, 3, 5], candidate.call(6))
    assert_equal([2, 3, 5], candidate.call(7))
    assert_equal([2, 3, 5, 7], candidate.call(10))
    assert_equal([], candidate.call(0))
    assert_equal([2, 3, 5, 7, 11, 13, 17, 19], candidate.call(22))
    assert_equal([], candidate.call(1))
    assert_equal([2, 3, 5, 7, 11, 13, 17], candidate.call(18))
    assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43], candidate.call(47))
    assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], candidate.call(101))
  end
end
