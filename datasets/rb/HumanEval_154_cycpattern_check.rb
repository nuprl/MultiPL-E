# You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
# cycpattern_check("abcd","abd") => False
# cycpattern_check("hello","ell") => True
# cycpattern_check("whassup","psus") => False
# cycpattern_check("abab","baa") => True
# cycpattern_check("efef","eeff") => False
# cycpattern_check("himenss","simen") => True
def cycpattern_check(a, b)
  a.split('').permutation.to_a.map(&:join).include?(b)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_cycpattern_check
    candidate = method(:cycpattern_check)
    assert_equal(false, candidate.call('xyzw', 'xyw'))
    assert_equal(true, candidate.call('yello', 'ell'))
    assert_equal(false, candidate.call('whattup', 'ptut'))
    assert_equal(true, candidate.call('efef', 'fee'))
    assert_equal(false, candidate.call('abab', 'aabb'))
    assert_equal(true, candidate.call('winemtt', 'tinem'))
  end
end
