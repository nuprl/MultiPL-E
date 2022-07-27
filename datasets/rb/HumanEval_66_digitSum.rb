# Task
# Write a function that takes a string as input and returns the sum of the upper characters only'
# ASCII codes.
# Examples:
# digitSum("") => 0
# digitSum("abAB") => 131
# digitSum("abcCd") => 67
# digitSum("helloE") => 69
# digitSum("woArBld") => 131
# digitSum("aAaaaXa") => 153
def digitSum(s)
  s.scan(/[A-Z]/).map(&:ord).reduce(:+)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_digitSum
    candidate = method(:digitSum)
    assert_equal(0, candidate.call(''))
    assert_equal(131, candidate.call('abAB'))
    assert_equal(67, candidate.call('abcCd'))
    assert_equal(69, candidate.call('helloE'))
    assert_equal(131, candidate.call('woArBld'))
    assert_equal(153, candidate.call('aAaaaXa'))
    assert_equal(151, candidate.call(' How are yOu?'))
    assert_equal(327, candidate.call('You arE Very Smart'))
  end
end
