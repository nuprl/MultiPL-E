# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
def has_close_elements(numbers, threshold)
  numbers.each_with_index do |number, index|
    numbers.each_with_index do |number2, index2|
      next if index == index2
      return true if (number - number2).abs < threshold
    end
  end
  false
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_has_close_elements
    candidate = method(:has_close_elements)
    assert_equal(true, candidate.call([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3))
    assert_equal(false, candidate.call([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05))
    assert_equal(true, candidate.call([1.0, 2.0, 5.9, 4.0, 5.0], 0.95))
    assert_equal(false, candidate.call([1.0, 2.0, 5.9, 4.0, 5.0], 0.8))
    assert_equal(true, candidate.call([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1))
    assert_equal(true, candidate.call([1.1, 2.2, 3.1, 4.1, 5.1], 1.0))
    assert_equal(false, candidate.call([1.1, 2.2, 3.1, 4.1, 5.1], 0.5))
  end
end
