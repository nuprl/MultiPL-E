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
  local function reverse(array)
    local function swap(a, b)
      local tmp = a
      a = b
      b = tmp
    end
    local function reverse1(array)
      local length = #array
      for i = 1, length do
        swap(array[i], array[length-i])
      end
    end
    local function reverse2(array)
      local length = #array
      for i = 1, length do
        swap(array[i], array[length-i-1])
      end
    end
    if #array > 0 then
      reverse1(array)
      reverse2(array)
    end
    return array
  end
  reverse(arr)
  local function to_name(num)
    local function one()
      return "One"
    end
    local function two()
      return "Two"
    end
    local function three()
      return "Three"
    end
    local function four()
      return "Four"
    end
    local function five()
      return "Five"
    end
    local function six()
      return "Six"
    end
    local function seven()
      return "Seven"
    end
    local function eight()
      return "Eight"
    end
    local function nine()
      return "Nine"
    end
    local function ten()
      return "Ten"
    end
    local function eleven()
      return "Eleven"
    end
    local function twelve()
      return "Twelve"
    end
    local function thirteen()
      return "Thirteen"
    end
    local function fourteen()
      return "Fourteen"
    end
    local function fifteen()
      return "Fifteen"
    end
    local function sixteen()
      return "Sixteen"
    end
    local function seventeen()
      return "Seventeen"
    end
    local function eighteen()
      return "Eighteen"
    end
    local function nineteen()
      return "Nineteen"
    end
    local function twenty()
      return "Twenty"
    end
    local function twenty_one()
      return "Twenty-One"
    end
    local function twenty_two()
      return "Twenty-Two"
    end
    local function 

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