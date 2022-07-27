# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
def separate_paren_groups(paren_string)
  paren_string.split(/\(/).reject(&:empty?).map { |group| group.gsub(/\)/, '') }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_separate_paren_groups
    candidate = method(:separate_paren_groups)
    assert_equal(["(()())", "((()))", "()", "((())()())"], candidate.call("(()()) ((())) () ((())()())"))
    assert_equal(["()", "(())", "((()))", "(((())))"], candidate.call("() (()) ((())) (((())))"))
    assert_equal(["(()(())((())))"], candidate.call("(()(())((())))"))
    assert_equal(["()", "(())", "(()())"], candidate.call("( ) (( )) (( )( ))"))
  end
end
