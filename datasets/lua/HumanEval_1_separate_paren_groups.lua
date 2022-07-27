-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the list of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- ['()', '(())', '(()())']
local function separate_paren_groups(paren_string)
  local paren_groups = {}
  local paren_group = ""
  local paren_count = 0
  for i = 1, #paren_string do
    local char = paren_string:sub(i, i)
    if char == "(" then
      paren_count = paren_count + 1
      paren_group = paren_group .. char
    elseif char == ")" then
      paren_count = paren_count - 1
      paren_group = paren_group .. char
    elseif char == " " then
      if paren_count == 0 then
        table.insert(paren_groups, paren_group)
        paren_group = ""
      end
    else
      paren_group = paren_group .. char
    end
  end
  if paren_group ~= "" then
    table.insert(paren_groups, paren_group)
  end
  return paren_groups
end

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())