# The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fibfib(0) == 0
# fibfib(1) == 0
# fibfib(2) == 1
# fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
# Please write a function to efficiently compute the n-th element of the fibfib number sequence.
# >>> fibfib(1)
# 0
# >>> fibfib(5)
# 4
# >>> fibfib(8)
# 24
def fibfib(n)
  return 0 if n == 0
  return 0 if n == 1
  return 1 if n == 2
  return fibfib(n-1) + fibfib(n-2) + fibfib(n-3)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fibfib
    candidate = method(:fibfib)
    assert_equal(1, candidate.call(2))
    assert_equal(0, candidate.call(1))
    assert_equal(4, candidate.call(5))
    assert_equal(24, candidate.call(8))
    assert_equal(81, candidate.call(10))
    assert_equal(274, candidate.call(12))
    assert_equal(927, candidate.call(14))
  end
end
