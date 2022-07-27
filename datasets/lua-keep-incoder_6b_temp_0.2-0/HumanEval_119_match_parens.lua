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
  local stack = {}
  for i = 1, #lst do
    if lst[i] == '(' then
      open = open + 1
      stack[#stack + 1] = i
    elseif lst[i] == ')' then
      close = close + 1
      if open ~= close then
        return false
      end
      open = open - 1
    end
  end
  if open ~= close then
    return false
  end
  local stack_size = #stack
  local stack_index = 1
  local stack_value = 1
  local stack_ptr = #stack
  local stack_ptr_val = #stack
  while stack_index <= stack_size do
    local stack_ptr_val = stack_ptr
    local stack_ptr = stack_ptr + stack_value
    local stack_value = stack_ptr_val - stack_ptr_val
    if lst[stack_ptr] == '(' then
      stack_value = stack_value + 1
    end
    if lst[stack_ptr] == ')' then
      stack_value = stack_value - 1
    end
    if stack_value == 0 then
      return true
    end
    stack_index = stack_index + 1
  end
  return false
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