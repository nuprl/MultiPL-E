# Return maximum element in the list.
# >>> max_element([1, 2, 3])
# 3
# >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# 123
def max_element(l)
  max = l[0]
  l.each do |i|
    if i > max
      max = i
    end
  end
  return max
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_max_element
    candidate = method(:max_element)
    assert_equal(3, candidate.call([1, 2, 3]))
    assert_equal(124, candidate.call([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]))
  end
end
