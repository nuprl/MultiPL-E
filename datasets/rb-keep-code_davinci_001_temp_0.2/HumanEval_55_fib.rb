# Return n-th Fibonacci number.
# >>> fib(10)
# 55
# >>> fib(1)
# 1
# >>> fib(8)
# 21
def fib(n)
  if n == 0 || n == 1
    return n
  else
    return fib(n-1) + fib(n-2)
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fib
    candidate = method(:fib)
    assert_equal(55, candidate.call(10))
    assert_equal(1, candidate.call(1))
    assert_equal(21, candidate.call(8))
    assert_equal(89, candidate.call(11))
    assert_equal(144, candidate.call(12))
  end
end
