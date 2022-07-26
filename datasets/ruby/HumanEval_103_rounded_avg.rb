=begin
 You are given two positive integers n and m, and your task is to compute the
 average of the integers from n through m (including n and m). 
 Round the answer to the nearest integer and convert that to binary.
 If n is greater than m, return -1.
 Example:
 rounded_avg(1, 5) => "0b11"
 rounded_avg(7, 5) => -1
 rounded_avg(10, 20) => "0b1111"
 rounded_avg(20, 33) => "0b11010"
=end
def rounded_avg(n, m)
  return -1 if n > m
  (n..m).reduce(:+).to_f.round.to_s(2)
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_rounded_avg
     assert_equal(rounded_avg(1, 5), '0b11')
     assert_equal(rounded_avg(7, 13), '0b1010')
     assert_equal(rounded_avg(964, 977), '0b1111001010')
     assert_equal(rounded_avg(996, 997), '0b1111100100')
     assert_equal(rounded_avg(560, 851), '0b1011000010')
     assert_equal(rounded_avg(185, 546), '0b101101110')
     assert_equal(rounded_avg(362, 496), '0b110101101')
     assert_equal(rounded_avg(350, 902), '0b1001110010')
     assert_equal(rounded_avg(197, 233), '0b11010111')
     assert_equal(rounded_avg(7, 5), -1)
     assert_equal(rounded_avg(5, 1), -1)
     assert_equal(rounded_avg(5, 5), '0b101')
  end
end
