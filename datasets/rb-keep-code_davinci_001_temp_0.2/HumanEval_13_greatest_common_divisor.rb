# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
def greatest_common_divisor(a, b)
  if a == 0 || b == 0
    return 0
  end
  if a == b
    return a
  end
  if a > b
    return greatest_common_divisor(a - b, b)
  else
    return greatest_common_divisor(a, b - a)
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_greatest_common_divisor
    candidate = method(:greatest_common_divisor)
    assert_equal(1, candidate.call(3, 7))
    assert_equal(5, candidate.call(10, 15))
    assert_equal(7, candidate.call(49, 14))
    assert_equal(12, candidate.call(144, 60))
  end
end
