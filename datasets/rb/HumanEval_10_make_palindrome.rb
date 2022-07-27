# Find the shortest palindrome that begins with a supplied string.
# Algorithm idea is simple:
# - Find the longest postfix of supplied string that is a palindrome.
# - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
# >>> make_palindrome('')
# ''
# >>> make_palindrome('cat')
# 'catac'
# >>> make_palindrome('cata')
# 'catac'
def make_palindrome(string)
  return string if string.length <= 1
  return string + string[0..-2].reverse if is_palindrome?(string)
  longest_palindrome = ''
  (string.length - 1).downto(0) do |i|
    if is_palindrome?(string[i..-1])
      longest_palindrome = string[i..-1]
      break
    end
  end
  string + longest_palindrome.reverse
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_make_palindrome
    candidate = method(:make_palindrome)
    assert_equal('', candidate.call(''))
    assert_equal('x', candidate.call('x'))
    assert_equal('xyzyx', candidate.call('xyz'))
    assert_equal('xyx', candidate.call('xyx'))
    assert_equal('jerryrrej', candidate.call('jerry'))
  end
end
