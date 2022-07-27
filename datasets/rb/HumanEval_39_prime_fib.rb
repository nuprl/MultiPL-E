# prime_fib returns n-th number that is a Fibonacci number and it's also prime.
# >>> prime_fib(1)
# 2
# >>> prime_fib(2)
# 3
# >>> prime_fib(3)
# 5
# >>> prime_fib(4)
# 13
# >>> prime_fib(5)
# 89
def prime_fib(n)
  fib = [1, 1]
  while fib.length < n
    fib << fib[-1] + fib[-2]
  end
  fib[-1]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_prime_fib
    candidate = method(:prime_fib)
    assert_equal(2, candidate.call(1))
    assert_equal(3, candidate.call(2))
    assert_equal(5, candidate.call(3))
    assert_equal(13, candidate.call(4))
    assert_equal(89, candidate.call(5))
    assert_equal(233, candidate.call(6))
    assert_equal(1597, candidate.call(7))
    assert_equal(28657, candidate.call(8))
    assert_equal(514229, candidate.call(9))
    assert_equal(433494437, candidate.call(10))
  end
end
