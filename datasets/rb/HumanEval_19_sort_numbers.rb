# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
def sort_numbers(numbers)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sort_numbers
    candidate = method(:sort_numbers)
    assert_equal("", candidate.call(""))
    assert_equal("three", candidate.call("three"))
    assert_equal("three five nine", candidate.call("three five nine"))
    assert_equal("zero four five seven eight nine", candidate.call("five zero four seven nine eight"))
    assert_equal("zero one two three four five six", candidate.call("six five four three two one zero"))
  end
end
