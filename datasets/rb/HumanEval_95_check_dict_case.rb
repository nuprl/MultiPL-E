# Given a dictionary, return True if all keys are strings in lower 
# case or all keys are strings in upper case, else return False.
# The function should return False is the given dictionary is empty.
# Examples:
# check_dict_case({"a":"apple", "b":"banana"}) should return True.
# check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
# check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
# check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
# check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
def check_dict_case(dict)
  dict.each do |key, value|
    if key.is_a? String
      if key.upcase == key
        return false
      end
    end
  end
  return true
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_check_dict_case
    candidate = method(:check_dict_case)
    assert_equal(true, candidate.call({'p' => 'pineapple', 'b' => 'banana'}))
    assert_equal(false, candidate.call({'p' => 'pineapple', 'A' => 'banana', 'B' => 'banana'}))
    assert_equal(false, candidate.call({'p' => 'pineapple', '5' => 'banana', 'a' => 'apple'}))
    assert_equal(false, candidate.call({'Name' => 'John', 'Age' => '36', 'City' => 'Houston'}))
    assert_equal(true, candidate.call({'STATE' => 'NC', 'ZIP' => '12345'}))
    assert_equal(true, candidate.call({'fruit' => 'Orange', 'taste' => 'Sweet'}))
    assert_equal(false, candidate.call({}))
  end
end
