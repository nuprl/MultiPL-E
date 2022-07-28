-- Write a function that accepts two lists of strings and returns the list that has 
-- total number of chars in the all strings of the list less than the other list.
-- if the two lists have the same number of chars, return the first list.
-- Examples
-- total_match([], []) ➞ []
-- total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
-- total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
-- total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
-- total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
local function total_match(lst1, lst2)
  local len1 = #lst1
  local len2 = #lst2
  local len = 0
  for i = 1, len1 do
    len = len + lst1[i]
  end
  for i = 1, len2 do
    len = len + lst2[i]
  end
  if len == len1 then
    return lst1
  elseif len == len2 then
    return lst2
  else
    return nil
  end
end

-- Write a function that accepts two lists of strings and returns the list that has 
-- total number of chars in the all strings of the list less than the other list.
-- if the two lists have the same number of chars, return the first list.
-- Examples
-- total_match([], []) ➞ []
-- total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
-- total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
-- total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
-- total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']

lu = require('luaunit')

function test_humaneval()
local candidate = total_match
    lu.assertEquals(candidate({}, {}), {})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi'}), {'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'}), {'hi', 'admin'})
    lu.assertEquals(candidate({'4'}, {'1', '2', '3', '4', '5'}), {'4'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'Hi'}), {'hI', 'Hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hi'}), {'hI', 'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hii'}), {'hi', 'admin'})
    lu.assertEquals(candidate({}, {'this'}), {})
    lu.assertEquals(candidate({'this'}, {}), {})
end

os.exit(lu.LuaUnit.run())