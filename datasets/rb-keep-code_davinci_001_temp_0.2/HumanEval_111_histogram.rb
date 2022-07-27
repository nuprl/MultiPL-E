# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
# histogram('a b b a') == {'a': 2, 'b': 2}
# histogram('a b c a b') == {'a': 2, 'b': 2}
# histogram('b b b b a') == {'b': 4}
# histogram('') == {}
def histogram(test)
  result = Hash.new(0)
  test.split.each { |word| result[word] += 1 }
  result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_histogram
    candidate = method(:histogram)
    assert_equal({"a" => 2, "b" => 2}, candidate.call("a b b a"))
    assert_equal({"a" => 2, "b" => 2}, candidate.call("a b c a b"))
    assert_equal({"a" => 1, "b" => 1, "c" => 1, "d" => 1, "g" => 1}, candidate.call("a b c d g"))
    assert_equal({"r" => 1, "t" => 1, "g" => 1}, candidate.call("r t g"))
    assert_equal({"b" => 4}, candidate.call("b b b b a"))
    assert_equal({"r" => 1, "t" => 1, "g" => 1}, candidate.call("r t g"))
    assert_equal({}, candidate.call(""))
    assert_equal({"a" => 1}, candidate.call("a"))
  end
end
