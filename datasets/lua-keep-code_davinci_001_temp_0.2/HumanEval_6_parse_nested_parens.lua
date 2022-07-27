-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- [2, 3, 1, 3]
local function parse_nested_parens(paren_string)
  local max_nesting = 0
  local nesting_levels = {}
  for _, paren_group in ipairs(paren_string:split(' ')) do
    local level = 0
    for i = 1, #paren_group do
      if paren_group:sub(i, i) == '(' then
        level = level + 1
      elseif paren_group:sub(i, i) == ')' then
        level = level - 1
      end
    end
    max_nesting = math.max(max_nesting, level)
    table.insert(nesting_levels, level)
  end
  return nesting_levels, max_nesting
end

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())