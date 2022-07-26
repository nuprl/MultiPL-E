=begin
 Task
 We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
 then check if the result string is palindrome.
 A string is called palindrome if it reads the same backward as forward.
 You should return a tuple containing the result string and True/False for the check.
 Example
 For s = "abcde", c = "ae", the result should be ('bcd',False)
 For s = "abcdef", c = "b"  the result should be ('acdef',False)
 For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
=end
def reverse_delete(s, c)
  s.delete!(c)
  return [s, s == s.reverse]
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_reverse_delete
     assert_equal(reverse_delete('abcde', 'ae'), ['bcd', false])
     assert_equal(reverse_delete('abcdef', 'b'), ['acdef', false])
     assert_equal(reverse_delete('abcdedcba', 'ab'), ['cdedc', true])
     assert_equal(reverse_delete('dwik', 'w'), ['dik', false])
     assert_equal(reverse_delete('a', 'a'), ['', true])
     assert_equal(reverse_delete('abcdedcba', ''), ['abcdedcba', true])
     assert_equal(reverse_delete('abcdedcba', 'v'), ['abcdedcba', true])
     assert_equal(reverse_delete('vabba', 'v'), ['abba', true])
     assert_equal(reverse_delete('mamma', 'mia'), ['', true])
  end
end
