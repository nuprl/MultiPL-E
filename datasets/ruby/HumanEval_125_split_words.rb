=begin
 Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
 should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
 alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
 Examples
 split_words("Hello world!") ➞ ["Hello", "world!"]
 split_words("Hello,world!") ➞ ["Hello", "world!"]
 split_words("abcdef") == 3
=end
def split_words(txt)
  txt.split(/\s|,/).reject { |x| x.empty? }
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_split_words
     assert_equal(split_words('Hello world!'), ['Hello', 'world!'])
     assert_equal(split_words('Hello,world!'), ['Hello', 'world!'])
     assert_equal(split_words('Hello world,!'), ['Hello', 'world,!'])
     assert_equal(split_words('Hello,Hello,world !'), ['Hello,Hello,world', '!'])
     assert_equal(split_words('abcdef'), 3)
     assert_equal(split_words('aaabb'), 2)
     assert_equal(split_words('aaaBb'), 1)
     assert_equal(split_words(''), 0)
  end
end
