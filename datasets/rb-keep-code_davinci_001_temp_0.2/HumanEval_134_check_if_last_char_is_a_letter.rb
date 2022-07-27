# Create a function that returns True if the last character
# of a given string is an alphabetical character and is not
# a part of a word, and False otherwise.
# Note: "word" is a group of characters separated by space.
# Examples:
# check_if_last_char_is_a_letter("apple pie") ➞ False
# check_if_last_char_is_a_letter("apple pi e") ➞ True
# check_if_last_char_is_a_letter("apple pi e ") ➞ False
# check_if_last_char_is_a_letter("") ➞ False
def check_if_last_char_is_a_letter(txt)
    txt.split(" ").last.length == 0 ? false : txt.split(" ").last[-1].match(/[a-zA-Z]/) != nil
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_check_if_last_char_is_a_letter
    candidate = method(:check_if_last_char_is_a_letter)
    assert_equal(false, candidate.call("apple"))
    assert_equal(true, candidate.call("apple pi e"))
    assert_equal(false, candidate.call("eeeee"))
    assert_equal(true, candidate.call("A"))
    assert_equal(false, candidate.call("Pumpkin pie "))
    assert_equal(false, candidate.call("Pumpkin pie 1"))
    assert_equal(false, candidate.call(""))
    assert_equal(false, candidate.call("eeeee e "))
    assert_equal(false, candidate.call("apple pie"))
    assert_equal(false, candidate.call("apple pi e "))
  end
end
