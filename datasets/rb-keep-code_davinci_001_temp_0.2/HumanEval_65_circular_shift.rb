# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
def circular_shift(x, shift)
  x = x.to_s.split('')
  if shift > x.length
    x.reverse.join('')
  else
    x.rotate(shift).join('')
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_circular_shift
    candidate = method(:circular_shift)
    assert_equal("001", candidate.call(100, 2))
    assert_equal("12", candidate.call(12, 2))
    assert_equal("79", candidate.call(97, 8))
    assert_equal("21", candidate.call(12, 1))
    assert_equal("11", candidate.call(11, 101))
  end
end
