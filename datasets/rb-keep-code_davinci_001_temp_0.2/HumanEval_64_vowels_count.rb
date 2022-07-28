# Write a function vowels_count which takes a string representing
# a word as input and returns the number of vowels in the string.
# Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
# vowel, but only when it is at the end of the given word.
# Example:
# >>> vowels_count("abcde")
# 2
# >>> vowels_count("ACEDY")
# 3
def vowels_count(s)
  s.count "aeiou"
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_vowels_count
    candidate = method(:vowels_count)
    assert_equal(2, candidate.call("abcde"))
    assert_equal(3, candidate.call("Alone"))
    assert_equal(2, candidate.call("key"))
    assert_equal(1, candidate.call("bye"))
    assert_equal(2, candidate.call("keY"))
    assert_equal(1, candidate.call("bYe"))
    assert_equal(3, candidate.call("ACEDY"))
  end
end
