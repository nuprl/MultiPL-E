# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain exactly 
# n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
# Examples:
# select_words("Mary had a little lamb", 4) ==> ["little"]
# select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
# select_words("simple white space", 2) ==> []
# select_words("Hello world", 4) ==> ["world"]
# select_words("Uncle sam", 3) ==> ["Uncle"]
def select_words(s, n)
  s.split.select { |word| word.count("aeiou") == n }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_select_words
    candidate = method(:select_words)
    assert_equal(["little"], candidate.call("Mary had a little lamb", 4))
    assert_equal(["Mary", "lamb"], candidate.call("Mary had a little lamb", 3))
    assert_equal([], candidate.call("simple white space", 2))
    assert_equal(["world"], candidate.call("Hello world", 4))
    assert_equal(["Uncle"], candidate.call("Uncle sam", 3))
    assert_equal([], candidate.call("", 4))
    assert_equal(["b", "c", "d", "f"], candidate.call("a b c d e f", 1))
  end
end
