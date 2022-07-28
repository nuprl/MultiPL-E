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
  local function reverse(arr)
    local function reverse(arr, start, end)
      local temp = arr[end]
      arr[end] = arr[start]
      arr[start] = temp
      start = start + 1
      if start < end then
        reverse(arr, start, end)
      end
    end
    local start = 1, end
    reverse(arr, start, end)
    return arr
  end
  local function replace_digit(arr)
    local function replace_digit(arr, start, end)
      local digit = arr[end]
      arr[end] = arr[start]
      arr[start] = digit
      start = start + 1
      if start < end then
        replace_digit(arr, start, end)
      end
    end
    local start = 1, end
    replace_digit(arr, start, end)
    return arr
  end
  local function get_name(index)
    local function get_name(index)
      local function get_name(index)
        if index == 0 then
          return "One"
        elseif index == 1 then
          return "Two"
        elseif index == 2 then
          return "Three"
        elseif index == 3 then
          return "Four"
        elseif index == 4 then
          return "Five"
        elseif index == 5 then
          return "Six"
        elseif index == 6 then
          return "Seven"
        elseif index == 7 then
          return "Eight"
        elseif index == 8 then
          return "Nine"
        else
          return "?"
        end
      end
      return get_name(index - 1)
    end
    return get_name(index)
  end
  local function get_name(index)
    local function get_name(index)
      if index == 0 then
        return "One"
      elseif index == 1 then
        return "Two"
      elseif index == 2 then
        return "Three"
      elseif index == 3 then
        return "Four"
      elseif index == 4 then
        return "Five"
      elseif index == 5 then
        return "Six"
      elseif index == 6 then
        return "Seven"
      elseif index == 7 then
        return "Eight"
      elseif index == 8 then
        return "Nine"
      else
        return "?"
      end
    end
    return get_name(index - 1)
  end
  local function get_name(index)
    local function get_name(index)
      if index == 0 then
        return "One"
      elseif index

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