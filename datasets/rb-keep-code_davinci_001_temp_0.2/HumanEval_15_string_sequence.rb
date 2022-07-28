# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
def string_sequence(n)
  (0..n).to_a.join(' ')
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_string_sequence
    candidate = method(:string_sequence)
    assert_equal("0", candidate.call(0))
    assert_equal("0 1 2 3", candidate.call(3))
    assert_equal("0 1 2 3 4 5 6 7 8 9 10", candidate.call(10))
  end
end
