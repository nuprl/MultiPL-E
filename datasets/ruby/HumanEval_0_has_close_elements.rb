=begin
 Check if in given list of numbers, are any two numbers closer to each other than
 given threshold.
 >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
 False
 >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
 True
=end
def has_close_elements(numbers, threshold)
  numbers.each_with_index do |number, index|
    next if index == numbers.length - 1
    next if number + threshold >= numbers[index + 1]
    next if number - threshold <= numbers[index + 1]
    return true
  end
  false
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_has_close_elements
     assert_equal(has_close_elements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3), true)
     assert_equal(has_close_elements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05), false)
     assert_equal(has_close_elements([1.0, 2.0, 5.9, 4.0, 5.0], 0.95), true)
     assert_equal(has_close_elements([1.0, 2.0, 5.9, 4.0, 5.0], 0.8), false)
     assert_equal(has_close_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1), true)
     assert_equal(has_close_elements([1.1, 2.2, 3.1, 4.1, 5.1], 1.0), true)
     assert_equal(has_close_elements([1.1, 2.2, 3.1, 4.1, 5.1], 0.5), false)
  end
end
