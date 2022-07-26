=begin
 You are given a word. Your task is to find the closest vowel that stands between 
 two consonants from the right side of the word (case sensitive).
 Vowels in the beginning and ending doesn't count. Return empty string if you didn't
 find any vowel met the above condition. 
 You may assume that the given string contains English letter only.
 Example:
 get_closest_vowel("yogurt") ==> "u"
 get_closest_vowel("FULL") ==> "U"
 get_closest_vowel("quick") ==> ""
 get_closest_vowel("ab") ==> ""
=end
def get_closest_vowel(word)
  vowels = %w(a e i o u)
  vowels.each do |vowel|
    if word.include?(vowel)
      return vowel
    end
  end
  return ""
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_closest_vowel
     assert_equal(get_closest_vowel('yogurt'), 'u')
     assert_equal(get_closest_vowel('full'), 'u')
     assert_equal(get_closest_vowel('easy'), '')
     assert_equal(get_closest_vowel('eAsy'), '')
     assert_equal(get_closest_vowel('ali'), '')
     assert_equal(get_closest_vowel('bad'), 'a')
     assert_equal(get_closest_vowel('most'), 'o')
     assert_equal(get_closest_vowel('ab'), '')
     assert_equal(get_closest_vowel('ba'), '')
     assert_equal(get_closest_vowel('quick'), '')
     assert_equal(get_closest_vowel('anime'), 'i')
     assert_equal(get_closest_vowel('Asia'), '')
     assert_equal(get_closest_vowel('Above'), 'o')
  end
end
