# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# For s = "abcde", c = "ae", the result should be ('bcd',False)
# For s = "abcdef", c = "b"  the result should be ('acdef',False)
# For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
def reverse_delete(s, c)
  s.delete(c).reverse == s.delete(c).reverse ? [s.delete(c), true] : [s.delete(c), false]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_reverse_delete
    candidate = method(:reverse_delete)
    assert_equal(["bcd", false], candidate.call("abcde", "ae"))
    assert_equal(["acdef", false], candidate.call("abcdef", "b"))
    assert_equal(["cdedc", true], candidate.call("abcdedcba", "ab"))
    assert_equal(["dik", false], candidate.call("dwik", "w"))
    assert_equal(["", true], candidate.call("a", "a"))
    assert_equal(["abcdedcba", true], candidate.call("abcdedcba", ""))
    assert_equal(["abcdedcba", true], candidate.call("abcdedcba", "v"))
    assert_equal(["abba", true], candidate.call("vabba", "v"))
    assert_equal(["", true], candidate.call("mamma", "mia"))
  end
end
