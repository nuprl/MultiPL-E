# Checks if given string is a palindrome
# >>> is_palindrome('')
# True
# >>> is_palindrome('aba')
# True
# >>> is_palindrome('aaaaa')
# True
# >>> is_palindrome('zbcd')
# False
def is_palindrome(text)
  text == text.reverse
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_palindrome
    candidate = method(:is_palindrome)
    assert_equal(true, candidate.call(""))
    assert_equal(true, candidate.call("aba"))
    assert_equal(true, candidate.call("aaaaa"))
    assert_equal(false, candidate.call("zbcd"))
    assert_equal(true, candidate.call("xywyx"))
    assert_equal(false, candidate.call("xywyz"))
    assert_equal(false, candidate.call("xywzx"))
  end
end
