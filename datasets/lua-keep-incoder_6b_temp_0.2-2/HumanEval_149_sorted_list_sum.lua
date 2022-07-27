-- Write a function that accepts a list of strings as a parameter,
-- deletes the strings that have odd lengths from it,
-- and returns the resulted list with a sorted order,
-- The list is always a list of strings and never an array of numbers,
-- and it may contain duplicates.
-- The order of the list should be ascending by length of each word, and you
-- should return the list sorted by that rule.
-- If two words have the same length, sort the list alphabetically.
-- The function should return a list of strings in sorted order.
-- You may assume that all words will have the same length.
-- For example:
-- assert list_sort(["aa", "a", "aaa"]) => ["aa"]
-- assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
local function sorted_list_sum(lst)
  local sorted_list = lst
  local sorted_list_size = #sorted_list
  local sorted_list_index = 1
  local sorted_list_index_size = #sorted_list
  local sorted_list_index_value = 1
  local sorted_list_index_value_size = 1
  while sorted_list_index_size ~= sorted_list_size do
    sorted_list[sorted_list_index] = sorted_list[sorted_list_index_value]
    sorted_list_index_value = sorted_list_index_value + 1
    sorted_list_index_size = sorted_list_index_size + 1
  end
  while sorted_list_index_value ~= sorted_list_index_size do
    sorted_list[sorted_list_index] = sorted_list[sorted_list_index_value]
    sorted_list_index = sorted_list_index + 1
    sorted_list_index_value = sorted_list_index_value + 1
    sorted_list_index_size = sorted_list_index_size + 1
  end
  return sorted_list
end

-- Write a function that accepts a list of strings as a parameter,
-- deletes the strings that have odd lengths from it,
-- and returns the resulted list with a sorted order,
-- The list is always a list of strings and never an array of numbers,
-- and it may contain duplicates.
-- The order of the list should be ascending by length of each word, and you
-- should return the list sorted by that rule.
-- If two words have the same length, sort the list alphabetically.
-- The function should return a list of strings in sorted order.
-- You may assume that all words will have the same length.
-- For example:
-- assert list_sort(["aa", "a", "aaa"]) => ["aa"]
-- assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]

lu = require('luaunit')

function test_humaneval()
local candidate = sorted_list_sum
    lu.assertEquals(candidate({'aa', 'a', 'aaa'}), {'aa'})
    lu.assertEquals(candidate({'school', 'AI', 'asdf', 'b'}), {'AI', 'asdf', 'school'})
    lu.assertEquals(candidate({'d', 'b', 'c', 'a'}), {})
    lu.assertEquals(candidate({'d', 'dcba', 'abcd', 'a'}), {'abcd', 'dcba'})
    lu.assertEquals(candidate({'AI', 'ai', 'au'}), {'AI', 'ai', 'au'})
    lu.assertEquals(candidate({'a', 'b', 'b', 'c', 'c', 'a'}), {})
    lu.assertEquals(candidate({'aaaa', 'bbbb', 'dd', 'cc'}), {'cc', 'dd', 'aaaa', 'bbbb'})
end

os.exit(lu.LuaUnit.run())