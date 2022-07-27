# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
def parse_nested_parens(paren_string)
  paren_string.split(' ').map { |group| group.count('(') - group.count(')') }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_parse_nested_parens
    candidate = method(:parse_nested_parens)
    assert_equal([2, 3, 1, 3], candidate.call('(()()) ((())) () ((())()())'))
    assert_equal([1, 2, 3, 4], candidate.call('() (()) ((())) (((())))'))
    assert_equal([4], candidate.call('(()(())((())))'))
  end
end
