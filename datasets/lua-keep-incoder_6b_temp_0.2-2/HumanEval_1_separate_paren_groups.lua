-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the list of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- ['()', '(())', '(()())']
local function separate_paren_groups(paren_string)
  local groups = {}
  local open_braces = 0
  local close_braces = 0
  local open_brace_level = 0
  local close_brace_level = 0
  for char in string.gmatch(paren_string, "()") do
    if char == "(" then
      if open_braces == 0 then
        open_braces = open_brace_level
      else
        open_braces = open_braces - 1
      end
      open_brace_level = open_braces + 1
    elseif char == ")" then
      if close_braces == 0 then
        close_braces = close_brace_level
      else
        close_braces = close_braces - 1
      end
      close_brace_level = close_braces + 1
    elseif char == " " then
      if open_braces > 0 and close_braces == 0 then
        table.insert(groups, string.sub(paren_string, 1, open_braces - 1))
      end
    end
  end
  if open_braces > 0 and close_braces > 0 then
    table.insert(groups, string.sub(paren_string, 1, open_braces - 1))
  end
  return groups
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