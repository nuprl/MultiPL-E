# You'll be given a string of words, and your task is to count the number
# of boredoms. A boredom is a sentence that starts with the word "I".
# Sentences are delimited by '.', '?' or '!'.
# For example:
# >>> is_bored("Hello world")
# 0
# >>> is_bored("The sky is blue. The sun is shining. I love this weather")
# 1
def is_bored(s)
  s.split(/[.?!]/).each do |sentence|
    return 1 if sentence[0] == 'I'
  end
  0
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_bored
    candidate = method(:is_bored)
    assert_equal(0, candidate.call('Hello world'))
    assert_equal(0, candidate.call('Is the sky blue?'))
    assert_equal(1, candidate.call('I love It !'))
    assert_equal(0, candidate.call('bIt'))
    assert_equal(2, candidate.call('I feel good today. I will be productive. will kill It'))
    assert_equal(0, candidate.call('You and I are going for a walk'))
  end
end
