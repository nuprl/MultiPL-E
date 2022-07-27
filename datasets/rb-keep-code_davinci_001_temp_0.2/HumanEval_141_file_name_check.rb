# Create a function which takes a string representing a file's name, and returns
# 'Yes' if the the file's name is valid, and returns 'No' otherwise.
# A file's name is considered to be valid if and only if all the following conditions 
# are met:
# - There should not be more than three digits ('0'-'9') in the file's name.
# - The file's name contains exactly one dot '.'
# - The substring before the dot should not be empty, and it starts with a letter from 
# the latin alphapet ('a'-'z' and 'A'-'Z').
# - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
# Examples:
# file_name_check("example.txt") # => 'Yes'
# file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
def file_name_check(file_name)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_file_name_check
    candidate = method(:file_name_check)
    assert_equal("Yes", candidate.call("example.txt"))
    assert_equal("No", candidate.call("1example.dll"))
    assert_equal("No", candidate.call("s1sdf3.asd"))
    assert_equal("Yes", candidate.call("K.dll"))
    assert_equal("Yes", candidate.call("MY16FILE3.exe"))
    assert_equal("No", candidate.call("His12FILE94.exe"))
    assert_equal("No", candidate.call("_Y.txt"))
    assert_equal("No", candidate.call("?aREYA.exe"))
    assert_equal("No", candidate.call("/this_is_valid.dll"))
    assert_equal("No", candidate.call("this_is_valid.wow"))
    assert_equal("Yes", candidate.call("this_is_valid.txt"))
    assert_equal("No", candidate.call("this_is_valid.txtexe"))
    assert_equal("No", candidate.call("#this2_i4s_5valid.ten"))
    assert_equal("No", candidate.call("@this1_is6_valid.exe"))
    assert_equal("No", candidate.call("this_is_12valid.6exe4.txt"))
    assert_equal("No", candidate.call("all.exe.txt"))
    assert_equal("Yes", candidate.call("I563_No.exe"))
    assert_equal("Yes", candidate.call("Is3youfault.txt"))
    assert_equal("Yes", candidate.call("no_one#knows.dll"))
    assert_equal("No", candidate.call("1I563_Yes3.exe"))
    assert_equal("No", candidate.call("I563_Yes3.txtt"))
    assert_equal("No", candidate.call("final..txt"))
    assert_equal("No", candidate.call("final132"))
    assert_equal("No", candidate.call("_f4indsartal132."))
    assert_equal("No", candidate.call(".txt"))
    assert_equal("No", candidate.call("s."))
  end
end
