# Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
# should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
# alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
# Examples
# split_words("Hello world!") ➞ ["Hello", "world!"]
# split_words("Hello,world!") ➞ ["Hello", "world!"]
# split_words("abcdef") == 3
def split_words(txt)
  if txt.include? ' '
    txt.split(' ')
  elsif txt.include? ','
    txt.split(',')
  else
    txt.count('a-z')
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_split_words
    candidate = method(:split_words)
    assert_equal(["Hello", "world!"], candidate.call("Hello world!"))
    assert_equal(["Hello", "world!"], candidate.call("Hello,world!"))
    assert_equal(["Hello", "world,!"], candidate.call("Hello world,!"))
    assert_equal(["Hello,Hello,world", "!"], candidate.call("Hello,Hello,world !"))
    assert_equal(3, candidate.call("abcdef"))
    assert_equal(2, candidate.call("aaabb"))
    assert_equal(1, candidate.call("aaaBb"))
    assert_equal(0, candidate.call(""))
  end
end
