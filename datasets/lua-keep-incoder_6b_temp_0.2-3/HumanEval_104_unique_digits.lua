-- Given a list of positive integers x. return a sorted list of all 
-- elements that hasn't any even digit.
-- Note: Returned list should be sorted in increasing order.
-- For example:
-- >>> unique_digits([15, 33, 1422, 1])
-- [1, 15, 33]
-- >>> unique_digits([152, 323, 1422, 10])
-- []
local function unique_digits(x)
  local function helper(y)
    local i = 1
    while i <= y do
      if x[i] == 0 then
        table.insert(res, x[i])
      else
        helper(i * 10)
      end
      i = i + 1
    end
  end
  local res = {}
  helper(1)
  return res
end

-- Given a list of positive integers x. return a sorted list of all 
-- elements that hasn't any odd digit.
-- Note: Returned list should be sorted in increasing order.
-- For example:
-- >>> unique_digits([15, 33, 1422, 1])
-- [1, 33, 15]
-- >>> unique_digits([152, 323, 1422, 10])
-- []

lu = require('luaunit')

function test_humaneval()
local candidate = unique_digits
    lu.assertEquals(candidate({15, 33, 1422, 1}), {1, 15, 33})
    lu.assertEquals(candidate({152, 323, 1422, 10}), {})
    lu.assertEquals(candidate({12345, 2033, 111, 151}), {111, 151})
    lu.assertEquals(candidate({135, 103, 31}), {31, 135})
end

os.exit(lu.LuaUnit.run())