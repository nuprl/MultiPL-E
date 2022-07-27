# Filter given list of any python values only for integers
# >>> filter_integers(['a', 3.14, 5])
# [5]
# >>> filter_integers([1, 2, 3, 'abc', {}, []])
# [1, 2, 3]
def filter_integers(values)
    # Write your code here
    return values.select{|v| v.is_a? Integer}
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_filter_integers
    candidate = method(:filter_integers)
    assert_equal([], candidate.call([]))
    assert_equal([4, 9], candidate.call([4, {}, [], 23.2, 9, 'adasd']))
    assert_equal([3, 3, 3], candidate.call([3, 'c', 3, 3, 'a', 'b']))
  end
end
