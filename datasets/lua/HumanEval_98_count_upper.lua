-- Given a string s, count the number of uppercase vowels in even indices.
-- For example:
-- count_upper('aBCdEf') returns 1
-- count_upper('abcdefg') returns 0
-- count_upper('dBBE') returns 0
local function count_upper(s)
  local count = 0
  for i = 1, #s, 2 do
    local c = s:sub(i, i)
    if c == 'A' or c == 'E' or c == 'I' or c == 'O' or c == 'U' then
      count = count + 1
    end
  end
  return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_upper
    lu.assertEquals(candidate('aBCdEf'), 1)
    lu.assertEquals(candidate('abcdefg'), 0)
    lu.assertEquals(candidate('dBBE'), 0)
    lu.assertEquals(candidate('B'), 0)
    lu.assertEquals(candidate('U'), 1)
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('EEEE'), 2)
end

os.exit(lu.LuaUnit.run())