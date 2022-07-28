# You are given two positive integers n and m, and your task is to compute the
# average of the integers from n through m (including n and m). 
# Round the answer to the nearest integer and convert that to binary.
# If n is greater than m, return -1.
# Example:
# rounded_avg(1, 5) => "0b11"
# rounded_avg(7, 5) => -1
# rounded_avg(10, 20) => "0b1111"
# rounded_avg(20, 33) => "0b11010"
def rounded_avg(n, m)
  if n > m
    return -1
  end
  sum = 0
  for i in n..m
    sum += i
  end
  avg = sum / (m - n + 1)
  avg = avg.to_i
  avg.to_s(2)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_rounded_avg
    candidate = method(:rounded_avg)
    assert_equal("0b11", candidate.call(1, 5))
    assert_equal("0b1010", candidate.call(7, 13))
    assert_equal("0b1111001010", candidate.call(964, 977))
    assert_equal("0b1111100100", candidate.call(996, 997))
    assert_equal("0b1011000010", candidate.call(560, 851))
    assert_equal("0b101101110", candidate.call(185, 546))
    assert_equal("0b110101101", candidate.call(362, 496))
    assert_equal("0b1001110010", candidate.call(350, 902))
    assert_equal("0b11010111", candidate.call(197, 233))
    assert_equal(-1, candidate.call(7, 5))
    assert_equal(-1, candidate.call(5, 1))
    assert_equal("0b101", candidate.call(5, 5))
  end
end
