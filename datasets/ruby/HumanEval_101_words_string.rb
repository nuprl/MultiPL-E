=begin
 You will be given a string of words separated by commas or spaces. Your task is
 to split the string into words and return an array of the words.
 For example:
 words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
 words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
=end
def words_string(s)
  s.split(/[,\s]+/)
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_words_string
     assert_equal(words_string('Hi, my name is John'), ['Hi', 'my', 'name', 'is', 'John'])
     assert_equal(words_string('One, two, three, four, five, six'), ['One', 'two', 'three', 'four', 'five', 'six'])
     assert_equal(words_string('Hi, my name'), ['Hi', 'my', 'name'])
     assert_equal(words_string('One,, two, three, four, five, six,'), ['One', 'two', 'three', 'four', 'five', 'six'])
     assert_equal(words_string(''), [])
     assert_equal(words_string('ahmed     , gamal'), ['ahmed', 'gamal'])
  end
end
