# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# arr = [2, 1, 1, 4, 5, 8, 2, 3]   
# -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
# -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
# return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# arr = []
# return []
# If the array has any strange number ignore it:
# arr = [1, -1 , 55] 
# -> sort arr -> [-1, 1, 55]
# -> reverse arr -> [55, 1, -1]
# return = ['One']
def by_length(arr)
  arr.sort_by { |x| x.to_s.length }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_by_length
    candidate = method(:by_length)
    assert_equal(['Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'], candidate.call([2, 1, 1, 4, 5, 8, 2, 3]))
    assert_equal([], candidate.call([]))
    assert_equal(['One'], candidate.call([1, -1, 55]))
    assert_equal(['Three', 'Two', 'One'], candidate.call([1, -1, 3, 2]))
    assert_equal(['Nine', 'Eight', 'Four'], candidate.call([9, 4, 8]))
  end
end
