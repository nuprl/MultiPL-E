# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
def string_xor(a, b)
  a.to_i(2) ^ b.to_i(2).to_s(2)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_string_xor
    candidate = method(:string_xor)
    assert_equal('010010', candidate.call('111000', '101010'))
    assert_equal('0', candidate.call('1', '1'))
    assert_equal('0101', candidate.call('0101', '0000'))
  end
end
