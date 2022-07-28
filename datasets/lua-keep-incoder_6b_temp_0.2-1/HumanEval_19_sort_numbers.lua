-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
  local numbers = numbers:gsub('%w+', ''):gsub('%d+', ''):gsub('%w+%d+', ''):gsub('%d+%w+', ''):gsub('%d+%d+%w+', ''):gsub('%d+%d+%w+%d+', ''):gsub('%d+%d+%w+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+', ''):gsub('%d+%d+%w+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d

lu = require('luaunit')

function test_humaneval()
local candidate = sort_numbers
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('three'), 'three')
    lu.assertEquals(candidate('three five nine'), 'three five nine')
    lu.assertEquals(candidate('five zero four seven nine eight'), 'zero four five seven eight nine')
    lu.assertEquals(candidate('six five four three two one zero'), 'zero one two three four five six')
end

os.exit(lu.LuaUnit.run())