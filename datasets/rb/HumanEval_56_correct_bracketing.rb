# brackets is a string of "<" and ">".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("<")
# False
# >>> correct_bracketing("<>")
# True
# >>> correct_bracketing("<<><>>")
# True
# >>> correct_bracketing("><<>")
# False
def correct_bracketing(brackets)
    stack = []
    brackets.each_char do |char|
        if char == "<"
            stack << char
        else
            return false if stack.pop != "<"
        end
    end
    stack.empty?
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_correct_bracketing
    candidate = method(:correct_bracketing)
    assert_equal(true, candidate.call('<>'))
    assert_equal(true, candidate.call('<<><>>'))
    assert_equal(true, candidate.call('<><><<><>><>'))
    assert_equal(true, candidate.call('<><><<<><><>><>><<><><<>>>'))
    assert_equal(false, candidate.call('<<<><>>>>'))
    assert_equal(false, candidate.call('><<>'))
    assert_equal(false, candidate.call('<'))
    assert_equal(false, candidate.call('<<<<'))
    assert_equal(false, candidate.call('>'))
    assert_equal(false, candidate.call('<<>'))
    assert_equal(false, candidate.call('<><><<><>><>><<>'))
    assert_equal(false, candidate.call('<><><<><>><>>><>'))
  end
end
