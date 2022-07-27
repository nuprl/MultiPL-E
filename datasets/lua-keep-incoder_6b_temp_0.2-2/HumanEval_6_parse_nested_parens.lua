-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- [2, 3, 1, 3]
local function parse_nested_parens(paren_string)
  local max_level = 0
  local paren_stack = {}
  for paren in string.gmatch(paren_string, "%[(%a)]") do
    local level = #paren_stack
    paren_stack[level] = paren
    if level > max_level then
      max_level = level
    end
  end
  return max_level
end


lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())