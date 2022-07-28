-- You are given a list of two strings, both strings consist of open
-- parentheses '(' or close parentheses ')' only.
-- Your job is to check if it is possible to concatenate the two strings in
-- some order, that the resulting string will be good.
-- A string S is considered to be good if and only if all parentheses in S
-- are balanced. For example: the string '(())()' is good, while the string
-- '())' is not.
-- Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
-- Examples:
-- match_parens(['()(', ')']) == 'Yes'
-- match_parens([')', ')']) == 'No'
local function match_parens(lst)
  local open = 0
  local close = 0
  local good = true
  for i = 1, #lst do
    if lst[i] == '(' and open > 0 then
      open = open - 1
    elseif lst[i] == ')' and close > 0 then
      close = close - 1
    elseif lst[i] == '(' and open == 0 then
      good = false
    end
  end
  return good
end

-- Given a list of strings, return true if and only if all strings are equal.
-- If two strings are equal, return true if and only if they are of the same length.
-- If two strings are of different lengths, return false.
-- Examples:
-- all_equal?(['a', 'b']) == true
-- all_equal?(['a', 'b']) == false
-- all_equal?(['a', 'b', 'c']) == true
-- all_equal?(['a', 'b', 'c', 'd']) == false

lu = require('luaunit')

function test_humaneval()
local candidate = match_parens
    lu.assertEquals(candidate({'()(', ')'}), 'Yes')
    lu.assertEquals(candidate({')', ')'}), 'No')
    lu.assertEquals(candidate({'(()(())', '())())'}), 'No')
    lu.assertEquals(candidate({')())', '(()()('}), 'Yes')
    lu.assertEquals(candidate({'(())))', '(()())(('}), 'Yes')
    lu.assertEquals(candidate({'()', '())'}), 'No')
    lu.assertEquals(candidate({'(()(', '()))()'}), 'Yes')
    lu.assertEquals(candidate({'((((', '((())'}), 'No')
    lu.assertEquals(candidate({')(()', '(()('}), 'No')
    lu.assertEquals(candidate({')(', ')('}), 'No')
    lu.assertEquals(candidate({'(', ')'}), 'Yes')
    lu.assertEquals(candidate({')', '('}), 'Yes')
end

os.exit(lu.LuaUnit.run())