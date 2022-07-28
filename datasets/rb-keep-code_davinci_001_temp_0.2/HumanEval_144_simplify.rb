# Your task is to implement a function that will simplify the expression
# x * n. The function returns True if x * n evaluates to a whole number and False
# otherwise. Both x and n, are string representation of a fraction, and have the following format,
# <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
# You can assume that x, and n are valid fractions, and do not have zero as denominator.
# simplify("1/5", "5/1") = True
# simplify("1/6", "2/1") = False
# simplify("7/10", "10/2") = False
def simplify(x, n)
  x_num, x_den = x.split("/").map(&:to_i)
  n_num, n_den = n.split("/").map(&:to_i)
  x_num *= n_den
  x_den *= n_num
  return false if x_den % x_num != 0
  x_den /= x_num
  x_den == 1
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_simplify
    candidate = method(:simplify)
    assert_equal(true, candidate.call("1/5", "5/1"))
    assert_equal(false, candidate.call("1/6", "2/1"))
    assert_equal(true, candidate.call("5/1", "3/1"))
    assert_equal(false, candidate.call("7/10", "10/2"))
    assert_equal(true, candidate.call("2/10", "50/10"))
    assert_equal(true, candidate.call("7/2", "4/2"))
    assert_equal(true, candidate.call("11/6", "6/1"))
    assert_equal(false, candidate.call("2/3", "5/2"))
    assert_equal(false, candidate.call("5/2", "3/5"))
    assert_equal(true, candidate.call("2/4", "8/4"))
    assert_equal(true, candidate.call("2/4", "4/2"))
    assert_equal(true, candidate.call("1/5", "5/1"))
    assert_equal(false, candidate.call("1/5", "1/5"))
  end
end
