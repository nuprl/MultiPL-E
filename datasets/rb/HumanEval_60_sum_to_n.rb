# sum_to_n is a function that sums numbers from 1 to n.
# >>> sum_to_n(30)
# 465
# >>> sum_to_n(100)
# 5050
# >>> sum_to_n(5)
# 15
# >>> sum_to_n(10)
# 55
# >>> sum_to_n(1)
# 1
def sum_to_n(n)
    if n == 1
        return 1
    else
        return n + sum_to_n(n-1)
    end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sum_to_n
    candidate = method(:sum_to_n)
    assert_equal(1, candidate.call(1))
    assert_equal(21, candidate.call(6))
    assert_equal(66, candidate.call(11))
    assert_equal(465, candidate.call(30))
    assert_equal(5050, candidate.call(100))
  end
end
