# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# next_smallest([1, 2, 3, 4, 5]) == 2
# next_smallest([5, 1, 4, 3, 2]) == 2
# next_smallest([]) == None
# next_smallest([1, 1]) == None
def next_smallest(lst)
  return nil if lst.empty?
  lst.sort!
  lst[1]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_next_smallest
    candidate = method(:next_smallest)
    assert_equal(2, candidate.call([1, 2, 3, 4, 5]))
    assert_equal(2, candidate.call([5, 1, 4, 3, 2]))
    assert_equal(nil, candidate.call([]))
    assert_equal(nil, candidate.call([1, 1]))
    assert_equal(1, candidate.call([1, 1, 1, 1, 0]))
    assert_equal(nil, candidate.call([1, 1]))
    assert_equal(-35, candidate.call([-35, 34, 12, -45]))
  end
end
