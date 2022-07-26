=begin
 Find the shortest palindrome that begins with a supplied string.
 Algorithm idea is simple:
 - Find the longest postfix of supplied string that is a palindrome.
 - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
 >>> make_palindrome('')
 ''
 >>> make_palindrome('cat')
 'catac'
 >>> make_palindrome('cata')
 'catac'
=end
def make_palindrome(string)
  return '' if string.empty?
  return string if string == string.reverse
  longest_palindrome_postfix = string.reverse.sub(/\A(.+)\z/, '\1')
  string + longest_palindrome_postfix.reverse
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_make_palindrome
     assert_equal(make_palindrome(''), '')
     assert_equal(make_palindrome('x'), 'x')
     assert_equal(make_palindrome('xyz'), 'xyzyx')
     assert_equal(make_palindrome('xyx'), 'xyx')
     assert_equal(make_palindrome('jerry'), 'jerryrrej')
  end
end
