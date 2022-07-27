# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
def f(n)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_f
    candidate = method(:f)
    assert_equal([1, 2, 6, 24, 15], candidate.call(5))
    assert_equal([1, 2, 6, 24, 15, 720, 28], candidate.call(7))
    assert_equal([1], candidate.call(1))
    assert_equal([1, 2, 6], candidate.call(3))
  end
end
