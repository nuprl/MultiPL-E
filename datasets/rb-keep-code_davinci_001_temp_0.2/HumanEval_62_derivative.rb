# xs represent coefficients of a polynomial.
# xs[0] + xs[1] * x + xs[2] * x^2 + ....
# Return derivative of this polynomial in the same form.
# >>> derivative([3, 1, 2, 4, 5])
# [1, 4, 12, 20]
# >>> derivative([1, 2, 3])
# [2, 6]
def derivative(xs)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_derivative
    candidate = method(:derivative)
    assert_equal([1, 4, 12, 20], candidate.call([3, 1, 2, 4, 5]))
    assert_equal([2, 6], candidate.call([1, 2, 3]))
    assert_equal([2, 2], candidate.call([3, 2, 1]))
    assert_equal([2, 2, 0, 16], candidate.call([3, 2, 1, 0, 4]))
    assert_equal([], candidate.call([1]))
  end
end
