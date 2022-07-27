# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
def add(lst)
  sum = 0
  for i in 0...lst.length
    if i.even? && lst[i].even?
      sum += lst[i]
    end
  end
  sum
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_add
    candidate = method(:add)
    assert_equal(88, candidate.call([4, 88]))
    assert_equal(122, candidate.call([4, 5, 6, 7, 2, 122]))
    assert_equal(0, candidate.call([4, 0, 6, 7]))
    assert_equal(12, candidate.call([4, 4, 6, 8]))
  end
end
