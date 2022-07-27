-- Given an array of integers, sort the integers that are between 1 and 9 inclusive,
-- reverse the resulting array, and then replace each digit by its corresponding name from
-- "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
-- For example:
-- arr = [2, 1, 1, 4, 5, 8, 2, 3]   
-- -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
-- -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
-- return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
-- If the array is empty, return an empty array:
-- arr = []
-- return []
-- If the array has any strange number ignore it:
-- arr = [1, -1 , 55] 
-- -> sort arr -> [-1, 1, 55]
-- -> reverse arr -> [55, 1, -1]
-- return = ['One']
local function by_length(arr)
  local function sort(a, b)
    if a < b then
      return 1
    elseif b < a then
      return -1
    else
      return 0
    end
  end
  table.sort(arr, sort)
  local function reverse(a)
    local b = {}
    for i = #a, 1, -1 do
      b[#b+1] = a[i]
    end
    return b
  end
  local function to_name(a)
    local b = {}
    for i = 1, 9 do
      b[i] = "One"
    end
    for i = 10, 1, -1 do
      b[i] = "Nine"
    end
    for i = 1, #a do
      local n = a[i]
      local name = b[n % 10]
      b[n % 10] = name
    end
    return b
  end
  return reverse(to_name(arr))
end

-- Given an array of integers, return the sum of the integers that are between 1 and 9 inclusive.
-- For example:
-- arr = [2, 1, 1, 4, 5, 8, 2, 3]   
-- -> sum (arr) -> 10
-- return 10
-- If the array is empty, return 0:
-- arr = []
-- return 0
-- If the array has any strange number ignore it:
-- arr = [1, -1 , 55] 
-- -> sum (arr) -> 55
-- return 55
-- return = 55

lu = require('luaunit')

function test_humaneval()
local candidate = by_length
    lu.assertEquals(candidate({2, 1, 1, 4, 5, 8, 2, 3}), {'Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, -1, 55}), {'One'})
    lu.assertEquals(candidate({1, -1, 3, 2}), {'Three', 'Two', 'One'})
    lu.assertEquals(candidate({9, 4, 8}), {'Nine', 'Eight', 'Four'})
end

os.exit(lu.LuaUnit.run())