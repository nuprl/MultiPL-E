# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# Input: sentence = "This is a test"
# Output: "is"
# Example 2:
# Input: sentence = "lets go for swimming"
# Output: "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
def words_in_sentence(sentence)
  sentence.split.select { |word| is_prime?(word.length) }.join(' ')
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_words_in_sentence
    candidate = method(:words_in_sentence)
    assert_equal("is", candidate.call("This is a test"))
    assert_equal("go for", candidate.call("lets go for swimming"))
    assert_equal("there is no place", candidate.call("there is no place available here"))
    assert_equal("Hi am Hussein", candidate.call("Hi I am Hussein"))
    assert_equal("go for it", candidate.call("go for it"))
    assert_equal("", candidate.call("here"))
    assert_equal("is", candidate.call("here is"))
  end
end
