# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
# >>> intersperse([], 4)
# []
# >>> intersperse([1, 2, 3], 4)
# [1, 4, 2, 4, 3]
def intersperse(numbers, delimeter)
  result = []
  numbers.each_with_index do |number, index|
    result << number
    if index < numbers.length - 1
      result << delimeter
    end
  end
  result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_intersperse
    candidate = method(:intersperse)
    assert_equal([], candidate.call([], 7))
    assert_equal([5, 8, 6, 8, 3, 8, 2], candidate.call([5, 6, 3, 2], 8))
    assert_equal([2, 2, 2, 2, 2], candidate.call([2, 2, 2], 2))
  end
end
