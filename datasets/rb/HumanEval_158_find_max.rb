# Write a function that accepts a list of strings.
# The list contains different words. Return the word with maximum number
# of unique characters. If multiple strings have maximum number of unique
# characters, return the one which comes first in lexicographical order.
# find_max(["name", "of", "string"]) == "string"
# find_max(["name", "enam", "game"]) == "enam"
# find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
def find_max(words)
  words.max_by { |word| word.chars.uniq.size }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_find_max
    candidate = method(:find_max)
    assert_equal('string', candidate.call(['name', 'of', 'string']))
    assert_equal('enam', candidate.call(['name', 'enam', 'game']))
    assert_equal('aaaaaaa', candidate.call(['aaaaaaa', 'bb', 'cc']))
    assert_equal('abc', candidate.call(['abc', 'cba']))
    assert_equal('footbott', candidate.call(['play', 'this', 'game', 'of', 'footbott']))
    assert_equal('gonna', candidate.call(['we', 'are', 'gonna', 'rock']))
    assert_equal('nation', candidate.call(['we', 'are', 'a', 'mad', 'nation']))
    assert_equal('this', candidate.call(['this', 'is', 'a', 'prrk']))
    assert_equal('b', candidate.call(['b']))
    assert_equal('play', candidate.call(['play', 'play', 'play']))
  end
end
