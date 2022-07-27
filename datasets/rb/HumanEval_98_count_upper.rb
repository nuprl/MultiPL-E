# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# count_upper('aBCdEf') returns 1
# count_upper('abcdefg') returns 0
# count_upper('dBBE') returns 0
def count_upper(s)
  count = 0
  s.each_char.with_index do |char, i|
    count += 1 if char.upcase == char && i.even?
  end
  count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_count_upper
    candidate = method(:count_upper)
    assert_equal(1, candidate.call("aBCdEf"))
    assert_equal(0, candidate.call("abcdefg"))
    assert_equal(0, candidate.call("dBBE"))
    assert_equal(0, candidate.call("B"))
    assert_equal(1, candidate.call("U"))
    assert_equal(0, candidate.call(""))
    assert_equal(2, candidate.call("EEEE"))
  end
end
