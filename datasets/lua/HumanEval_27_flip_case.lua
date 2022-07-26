-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
  local new_string = ''
  for i = 1, #string do
    local char = string:sub(i, i)
    if char:match('%l') then
      new_string = new_string .. char:upper()
    elseif char:match('%u') then
      new_string = new_string .. char:lower()
    else
      new_string = new_string .. char
    end
  end
  return new_string
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())