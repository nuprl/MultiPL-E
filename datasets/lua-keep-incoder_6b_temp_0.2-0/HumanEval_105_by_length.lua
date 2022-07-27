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
  local sorted_arr = {}
  local reversed_arr = {}
  local lengths = {}
  for i = 1, #arr do
    local length = math.floor(math.log10(arr[i]))
    lengths[length] = lengths[length] + 1
  end
  for i = 1, #arr do
    local length = math.floor(math.log10(arr[i]))
    local index = lengths[length]
    sorted_arr[index] = arr[i]
    reversed_arr[index] = arr[#arr + i - 1]
  end
  for i = 1, #sorted_arr do
    sorted_arr[i] = "One"
  end
  for i = 1, #reversed_arr do
    reversed_arr[i] = "One"
  end
  return sorted_arr, reversed_arr
end

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