# Write a function that takes a string and returns an ordered version of it.
# Ordered version of string, is a string where all words (separated by space)
# are replaced by a new word where all the characters arranged in
# ascending order based on ascii value.
# Note: You should keep the order of words and blank spaces in the sentence.
# For example:
# anti_shuffle('Hi') returns 'Hi'
# anti_shuffle('hello') returns 'ehllo'
# anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
def anti_shuffle(s)
  s.split.map { |word| word.chars.sort.join }.join(' ')
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_anti_shuffle
    candidate = method(:anti_shuffle)
    assert_equal('Hi', candidate.call('Hi'))
    assert_equal('ehllo', candidate.call('hello'))
    assert_equal('bemnru', candidate.call('number'))
    assert_equal('abcd', candidate.call('abcd'))
    assert_equal('Hello !!!Wdlor', candidate.call('Hello World!!!'))
    assert_equal('', candidate.call(''))
    assert_equal('.Hi My aemn is Meirst .Rboot How aer ?ouy', candidate.call('Hi. My name is Mister Robot. How are you?'))
  end
end
