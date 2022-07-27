# Given a positive integer N, return the total sum of its digits in binary.
# Example
# For N = 1000, the sum of digits will be 1 the output should be "1".
# For N = 150, the sum of digits will be 6 the output should be "110".
# For N = 147, the sum of digits will be 12 the output should be "1100".
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
def solve(n)
  n.to_s(2).chars.map(&:to_i).reduce(:+)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_solve
    candidate = method(:solve)
    assert_equal("1", candidate.call(1000))
    assert_equal("110", candidate.call(150))
    assert_equal("1100", candidate.call(147))
    assert_equal("1001", candidate.call(333))
    assert_equal("10010", candidate.call(963))
  end
end
