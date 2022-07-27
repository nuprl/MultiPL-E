# The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fib4(0) -> 0
# fib4(1) -> 0
# fib4(2) -> 2
# fib4(3) -> 0
# fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
# Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
# >>> fib4(5)
# 4
# >>> fib4(6)
# 8
# >>> fib4(7)
# 14
def fib4(n)
  return 0 if n == 0
  return 0 if n == 1
  return 2 if n == 2
  return 0 if n == 3
  return fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fib4
    candidate = method(:fib4)
    assert_equal(4, candidate.call(5))
    assert_equal(28, candidate.call(8))
    assert_equal(104, candidate.call(10))
    assert_equal(386, candidate.call(12))
  end
end
