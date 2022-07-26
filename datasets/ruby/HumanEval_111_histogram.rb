=begin
 Given a string representing a space separated lowercase letters, return a dictionary
 of the letter with the most repetition and containing the corresponding count.
 If several letters have the same occurrence, return all of them.
 Example:
 histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
 histogram('a b b a') == {'a': 2, 'b': 2}
 histogram('a b c a b') == {'a': 2, 'b': 2}
 histogram('b b b b a') == {'b': 4}
 histogram('') == {}
=end
def histogram(test)
  hist = Hash.new(0)
  test.split.each { |word| hist[word] += 1 }
  hist.select { |k, v| v == hist.values.max }
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_histogram
     assert_equal(histogram('a b b a'), {'a' => 2, 'b' => 2})
     assert_equal(histogram('a b c a b'), {'a' => 2, 'b' => 2})
     assert_equal(histogram('a b c d g'), {'a' => 1, 'b' => 1, 'c' => 1, 'd' => 1, 'g' => 1})
     assert_equal(histogram('r t g'), {'r' => 1, 't' => 1, 'g' => 1})
     assert_equal(histogram('b b b b a'), {'b' => 4})
     assert_equal(histogram('r t g'), {'r' => 1, 't' => 1, 'g' => 1})
     assert_equal(histogram(''), {})
     assert_equal(histogram('a'), {'a' => 1})
  end
end
