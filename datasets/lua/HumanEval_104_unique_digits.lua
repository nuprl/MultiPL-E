-- Given a list of positive integers x. return a sorted list of all 
-- elements that hasn't any even digit.
-- Note: Returned list should be sorted in increasing order.
-- For example:
-- >>> unique_digits([15, 33, 1422, 1])
-- [1, 15, 33]
-- >>> unique_digits([152, 323, 1422, 10])
-- []
local function unique_digits(x)
  local result = {}
  for _, v in ipairs(x) do
    if is_unique(v) then
      table.insert(result, v)
    end
  end
  table.sort(result)
  return result
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = unique_digits
    lu.assertEquals(candidate({15, 33, 1422, 1}), {1, 15, 33})
    lu.assertEquals(candidate({152, 323, 1422, 10}), {})
    lu.assertEquals(candidate({12345, 2033, 111, 151}), {111, 151})
    lu.assertEquals(candidate({135, 103, 31}), {31, 135})
end

os.exit(lu.LuaUnit.run())