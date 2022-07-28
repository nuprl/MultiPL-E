-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
  local result = string
  -- Lowercase letters.
  for i = 1, #string do
    local c = string.sub(i, i, i)
    if string.sub(c, i, i) ~= nil then
      result = string.sub(c, i, i):lower() .. string.sub(c, i + 1, i + 1)
    end
  end
  -- Uppercase letters.
  for i = 1, #string do
    local c = string.sub(i, i, i)
    if string.sub(c, i, i) ~= nil then
      result = string.sub(c, i, i):upper() .. string.sub(c, i + 1, i + 1)
    end
  end
  return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())