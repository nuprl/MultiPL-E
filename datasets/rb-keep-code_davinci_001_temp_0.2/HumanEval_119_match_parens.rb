# You are given a list of two strings, both strings consist of open
# parentheses '(' or close parentheses ')' only.
# Your job is to check if it is possible to concatenate the two strings in
# some order, that the resulting string will be good.
# A string S is considered to be good if and only if all parentheses in S
# are balanced. For example: the string '(())()' is good, while the string
# '())' is not.
# Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
# Examples:
# match_parens(['()(', ')']) == 'Yes'
# match_parens([')', ')']) == 'No'
def match_parens(lst)
  return 'Yes' if lst.empty?
  return 'No' if lst.size == 1
  return 'Yes' if lst.size == 2 && lst[0] == '(' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.size == 2 && lst[0] == ')' && lst[1] == ')'
  return 'No' if lst.size == 2 && lst[0] == '(' && lst[1] == '('
  return 'No' if lst.

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_match_parens
    candidate = method(:match_parens)
    assert_equal("Yes", candidate.call(["()(", ")"]))
    assert_equal("No", candidate.call([")", ")"]))
    assert_equal("No", candidate.call(["(()(())", "())())"]))
    assert_equal("Yes", candidate.call([")())", "(()()("]))
    assert_equal("Yes", candidate.call(["(())))", "(()())(("]))
    assert_equal("No", candidate.call(["()", "())"]))
    assert_equal("Yes", candidate.call(["(()(", "()))()"]))
    assert_equal("No", candidate.call(["((((", "((())"]))
    assert_equal("No", candidate.call([")(()", "(()("]))
    assert_equal("No", candidate.call([")(", ")("]))
    assert_equal("Yes", candidate.call(["(", ")"]))
    assert_equal("Yes", candidate.call([")", "("]))
  end
end
