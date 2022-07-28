-- Given a string s, count the number of uppercase vowels in even indices.
-- For example:
-- count_upper('aBCdEf') returns 1
-- count_upper('abcdefg') returns 0
-- count_upper('dBBE') returns 0
local function count_upper(s)
  local count = 0
  for i = 1, #s do
    if string.sub(s,i,i) ~= 'A' and string.sub(s,i,i) ~= 'a' then
      count = count + 1
    end
  end
  return count
end

-- Given a string s, count the number of lowercase vowels in even indices.
-- For example:
-- count_lower('aBCdEf') returns 1
-- count_lower('abcdefg') returns 0
-- count_lower('dBBE') returns 0

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