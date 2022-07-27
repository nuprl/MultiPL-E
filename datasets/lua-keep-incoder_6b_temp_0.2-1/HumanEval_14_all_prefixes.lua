-- Return list of all prefixes from shortest to longest of the input string
-- >>> all_prefixes('abc')
-- ['a', 'ab', 'abc']
local function all_prefixes(string)
  local prefixes = {}
  for i = 1, #string do
    prefixes[i] = string
  end
  local function add_prefix(prefix)
    table.insert(prefixes, prefix)
  end
  add_prefix('')
  for i = 1, #string do
    add_prefix(string:sub(1, i))
  end
  return prefixes
end

-- Return list of all suffixes from shortest to longest of the input string
-- >>> all_suffixes('abc')
-- ['', 'bc', 'abc']

lu = require('luaunit')

function test_humaneval()
local candidate = all_prefixes
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('asdfgh'), {'a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'})
    lu.assertEquals(candidate('WWW'), {'W', 'WW', 'WWW'})
end

os.exit(lu.LuaUnit.run())