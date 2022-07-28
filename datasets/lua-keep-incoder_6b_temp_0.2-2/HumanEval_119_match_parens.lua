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
  for i = 1, #lst do
    if lst[i] == '(' then
      open = open + 1
    elseif lst[i] == ')' then
      close = close + 1
    end
  end
  if open ~= close then
    return 'No'
  end
  local open_balance = 1
  local close_balance = 1
  for i = 1, #lst do
    if lst[i] == '(' then
      open_balance = open_balance + 1
    elseif lst[i] == ')' then
      close_balance = close_balance + 1
    end
    if open_balance ~= close_balance then
      return 'No'
    end
  end
  return 'Yes'
end


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