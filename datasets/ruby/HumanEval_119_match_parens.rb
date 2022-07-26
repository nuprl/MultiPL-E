=begin
 You are given a list of two strings, both strings consist of open
 parentheses '(' or close parentheses ')' only.
 Your job is to check if it is possible to concatenate the two strings in
 some order, that the resulting string will be good.
 A string S is considered to be good if and only if all parentheses in S
 are balanced. For example: the string '(())()' is good, while the string
 '())' is not.
 Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
 Examples:
 match_parens(['()(', ')']) == 'Yes'
 match_parens([')', ')']) == 'No'
=end
def match_parens(lst)
  lst.each do |str|
    return 'No' if str.count('(') != str.count(')')
  end
  'Yes'
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_match_parens
     assert_equal(match_parens(['()(', ')']), 'Yes')
     assert_equal(match_parens([')', ')']), 'No')
     assert_equal(match_parens(['(()(())', '())())']), 'No')
     assert_equal(match_parens([')())', '(()()(']), 'Yes')
     assert_equal(match_parens(['(())))', '(()())((']), 'Yes')
     assert_equal(match_parens(['()', '())']), 'No')
     assert_equal(match_parens(['(()(', '()))()']), 'Yes')
     assert_equal(match_parens(['((((', '((())']), 'No')
     assert_equal(match_parens([')(()', '(()(']), 'No')
     assert_equal(match_parens([')(', ')(']), 'No')
     assert_equal(match_parens(['(', ')']), 'Yes')
     assert_equal(match_parens([')', '(']), 'Yes')
  end
end
