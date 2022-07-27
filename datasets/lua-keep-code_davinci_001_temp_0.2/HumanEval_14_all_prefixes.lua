-- Return list of all prefixes from shortest to longest of the input string
-- >>> all_prefixes('abc')
-- ['a', 'ab', 'abc']
local function all_prefixes(string)
    local prefixes = {}
    for i = 1, #string do
        table.insert(prefixes, string:sub(1, i))
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