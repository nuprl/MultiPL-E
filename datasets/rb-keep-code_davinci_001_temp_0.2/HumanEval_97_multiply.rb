# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
def multiply(a, b)
  a_digits = a.to_s.split('').map(&:to_i)
  b_digits = b.to_s.split('').map(&:to_i)
  result = 0
  a_digits.each do |a_digit|
    b_digits.each do |b_digit|
      result += a_digit * b_digit
    end
  end
  result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_multiply
    candidate = method(:multiply)
    assert_equal(16, candidate.call(148, 412))
    assert_equal(72, candidate.call(19, 28))
    assert_equal(0, candidate.call(2020, 1851))
    assert_equal(20, candidate.call(14, -15))
    assert_equal(42, candidate.call(76, 67))
    assert_equal(49, candidate.call(17, 27))
    assert_equal(0, candidate.call(0, 1))
    assert_equal(0, candidate.call(0, 0))
  end
end
