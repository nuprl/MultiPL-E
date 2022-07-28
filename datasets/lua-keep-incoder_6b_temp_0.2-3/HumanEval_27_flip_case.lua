-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
  local result = string
  local i, j = 1, #string
  while i <= j do
    local char = string.sub(i, j)
    if char >= 'a' and char <= 'z' then
      result = string.sub(i, j - 1) .. string.sub(j, i)
      i = j - 1
    elseif char >= 'A' and char <= 'Z' then
      result = string.sub(i, j - 1) .. string.sub(j, i)
      i = j - 1
    else
      i = j
    end
    j = i
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