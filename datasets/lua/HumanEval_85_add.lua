-- Given a non-empty list of integers lst. add the even elements that are at odd indices..
-- Examples:
-- add([4, 2, 6, 7]) ==> 2
local function add(lst)
    local sum = 0
    for i = 1, #lst do
        if i % 2 == 1 and lst[i] % 2 == 0 then
            sum = sum + lst[i]
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = add
    lu.assertEquals(candidate({4, 88}), 88)
    lu.assertEquals(candidate({4, 5, 6, 7, 2, 122}), 122)
    lu.assertEquals(candidate({4, 0, 6, 7}), 0)
    lu.assertEquals(candidate({4, 4, 6, 8}), 12)
end

os.exit(lu.LuaUnit.run())