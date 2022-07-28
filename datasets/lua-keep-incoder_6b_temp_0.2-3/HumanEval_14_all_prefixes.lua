-- Return list of all prefixes from shortest to longest of the input string
-- >>> all_prefixes('abc')
-- ['a', 'ab', 'abc']
local function all_prefixes(string)
  local prefixes = {}
  local i = 1
  while i <= #string do
    prefixes[#prefixes + 1] = string
    i = i + 1
  end
  return prefixes
end


lu = require('luaunit')

function test_humaneval()
local candidate = all_prefixes
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('asdfgh'), {'a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'})
    lu.assertEquals(candidate('WWW'), {'W', 'WW', 'WWW'})
end

os.exit(lu.LuaUnit.run())