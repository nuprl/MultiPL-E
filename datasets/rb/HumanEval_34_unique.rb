# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
def unique(l)
  l.sort.uniq
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_unique
    candidate = method(:unique)
    assert_equal([0, 2, 3, 5, 9, 123], candidate.call([5, 3, 5, 2, 3, 3, 9, 0, 123]))
  end
end
