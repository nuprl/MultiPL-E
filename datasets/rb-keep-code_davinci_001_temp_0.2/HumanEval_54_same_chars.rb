# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
def same_chars(s0, s1)
    # YOUR CODE HERE
    raise NotImplementedError()

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_same_chars
    candidate = method(:same_chars)
    assert_equal(true, candidate.call("eabcdzzzz", "dddzzzzzzzddeddabc"))
    assert_equal(true, candidate.call("abcd", "dddddddabc"))
    assert_equal(true, candidate.call("dddddddabc", "abcd"))
    assert_equal(false, candidate.call("eabcd", "dddddddabc"))
    assert_equal(false, candidate.call("abcd", "dddddddabcf"))
    assert_equal(false, candidate.call("eabcdzzzz", "dddzzzzzzzddddabc"))
    assert_equal(false, candidate.call("aabb", "aaccc"))
  end
end
