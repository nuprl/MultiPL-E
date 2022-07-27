# Find how many times a given substring can be found in the original string. Count overlaping cases.
# >>> how_many_times('', 'a')
# 0
# >>> how_many_times('aaa', 'a')
# 3
# >>> how_many_times('aaaa', 'aa')
# 3
def how_many_times(string, substring)
  string.scan(substring).count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_how_many_times
    candidate = method(:how_many_times)
    assert_equal(0, candidate.call('', 'x'))
    assert_equal(4, candidate.call('xyxyxyx', 'x'))
    assert_equal(4, candidate.call('cacacacac', 'cac'))
    assert_equal(1, candidate.call('john doe', 'john'))
  end
end
