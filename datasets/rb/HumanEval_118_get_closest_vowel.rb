# You are given a word. Your task is to find the closest vowel that stands between 
# two consonants from the right side of the word (case sensitive).
# Vowels in the beginning and ending doesn't count. Return empty string if you didn't
# find any vowel met the above condition. 
# You may assume that the given string contains English letter only.
# Example:
# get_closest_vowel("yogurt") ==> "u"
# get_closest_vowel("FULL") ==> "U"
# get_closest_vowel("quick") ==> ""
# get_closest_vowel("ab") ==> ""
def get_closest_vowel(word)
  vowels = %w(a e i o u)
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return char if word[i + 1] && vowels.include?(word[i + 1])
    end
  end
  ''
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_closest_vowel
    candidate = method(:get_closest_vowel)
    assert_equal('u', candidate.call('yogurt'))
    assert_equal('u', candidate.call('full'))
    assert_equal('', candidate.call('easy'))
    assert_equal('', candidate.call('eAsy'))
    assert_equal('', candidate.call('ali'))
    assert_equal('a', candidate.call('bad'))
    assert_equal('o', candidate.call('most'))
    assert_equal('', candidate.call('ab'))
    assert_equal('', candidate.call('ba'))
    assert_equal('', candidate.call('quick'))
    assert_equal('i', candidate.call('anime'))
    assert_equal('', candidate.call('Asia'))
    assert_equal('o', candidate.call('Above'))
  end
end
