# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
def count_distinct_characters(string)
  string.downcase.chars.uniq.length
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_count_distinct_characters
    candidate = method(:count_distinct_characters)
    assert_equal(0, candidate.call(''))
    assert_equal(5, candidate.call('abcde'))
    assert_equal(5, candidate.call('abcdecadeCADE'))
    assert_equal(1, candidate.call('aaaaAAAAaaaa'))
    assert_equal(5, candidate.call('Jerry jERRY JeRRRY'))
  end
end
