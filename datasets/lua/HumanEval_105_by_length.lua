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
  local new_arr = {}
  local i = 1
  for _, v in ipairs(arr) do
    if v >= 1 and v <= 9 then
      new_arr[i] = v
      i = i + 1
    end
  end
  table.sort(new_arr)
  table.reverse(new_arr)
  local new_arr_2 = {}
  for _, v in ipairs(new_arr) do
    if v == 1 then
      table.insert(new_arr_2, "One")
    elseif v == 2 then
      table.insert(new_arr_2, "Two")
    elseif v == 3 then
      table.insert(new_arr_2, "Three")
    elseif v == 4 then
      table.insert(new_arr_2, "Four")
    elseif v == 5 then
      table.insert(new_arr_2, "Five")
    elseif v == 6 then
      table.insert(new_arr_2, "Six")
    elseif v == 7 then
      table.insert(new_arr_2, "Seven")
    elseif v == 8 then
      table.insert(new_arr_2, "Eight")
    elseif v == 9 then
      table.insert(new_arr_2, "Nine")
    end
  end
  return new_arr_2
end
-- Unit tests below

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