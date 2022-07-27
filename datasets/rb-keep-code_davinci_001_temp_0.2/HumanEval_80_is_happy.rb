# You are given a string s.
# Your task is to check if the string is happy or not.
# A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
# For example:
# is_happy(a) => False
# is_happy(aa) => False
# is_happy(abcd) => True
# is_happy(aabb) => False
# is_happy(adb) => True
# is_happy(xyy) => False
def is_happy(s)
  return false if s.length < 3
  s.chars.each_cons(3).all? { |a, b, c| a != b && b != c }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_happy
    candidate = method(:is_happy)
    assert_equal(false, candidate.call("a"))
    assert_equal(false, candidate.call("aa"))
    assert_equal(true, candidate.call("abcd"))
    assert_equal(false, candidate.call("aabb"))
    assert_equal(true, candidate.call("adb"))
    assert_equal(false, candidate.call("xyy"))
    assert_equal(true, candidate.call("iopaxpoi"))
    assert_equal(false, candidate.call("iopaxioi"))
  end
end
