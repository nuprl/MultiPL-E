=begin
 Input are two strings a and b consisting only of 1s and 0s.
 Perform binary XOR on these inputs and return result also as a string.
 >>> string_xor('010', '110')
 '100'
=end
def string_xor(a, b)
  a.to_i(2) ^ b.to_i(2).to_s(2)
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_string_xor
     assert_equal(string_xor('111000', '101010'), '010010')
     assert_equal(string_xor('1', '1'), '0')
     assert_equal(string_xor('0101', '0000'), '0101')
  end
end
