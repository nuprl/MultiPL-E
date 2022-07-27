# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
def longest(strings)
  strings.max_by(&:length)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_longest
    candidate = method(:longest)
    assert_equal(nil, candidate.call([]))
    assert_equal("x", candidate.call(["x", "y", "z"]))
    assert_equal("zzzz", candidate.call(["x", "yyy", "zzzz", "www", "kkkk", "abc"]))
  end
end
