# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
def words_string(s)
  s.split(/[,\s]+/)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_words_string
    candidate = method(:words_string)
    assert_equal(["Hi", "my", "name", "is", "John"], candidate.call("Hi, my name is John"))
    assert_equal(["One", "two", "three", "four", "five", "six"], candidate.call("One, two, three, four, five, six"))
    assert_equal(["Hi", "my", "name"], candidate.call("Hi, my name"))
    assert_equal(["One", "two", "three", "four", "five", "six"], candidate.call("One,, two, three, four, five, six,"))
    assert_equal([], candidate.call(""))
    assert_equal(["ahmed", "gamal"], candidate.call("ahmed     , gamal"))
  end
end
