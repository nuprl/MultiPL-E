# Add two numbers x and y
# >>> add(2, 3)
# 5
# >>> add(5, 7)
# 12
def add(x, y)
  x + y
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_add
    candidate = method(:add)
    assert_equal(1, candidate.call(0, 1))
    assert_equal(1, candidate.call(1, 0))
    assert_equal(5, candidate.call(2, 3))
    assert_equal(12, candidate.call(5, 7))
    assert_equal(12, candidate.call(7, 5))
  end
end
