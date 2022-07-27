-- You are given a 2 dimensional data, as a nested lists,
-- which is similar to matrix, however, unlike matrices,
-- each row may contain a different number of columns.
-- Given lst, and integer x, find integers x in the list,
-- and return list of tuples, [(x1, y1), (x2, y2) ...] such that
-- each tuple is a coordinate - (row, columns), starting with 0.
-- Sort coordinates initially by rows in ascending order.
-- Also, sort coordinates of the row by columns in descending order.
-- Examples:
-- get_row([
-- [1,2,3,4,5,6],
-- [1,2,3,4,1,6],
-- [1,2,3,4,5,1]
-- ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
-- get_row([], 1) == []
-- get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
local function get_row(lst, x)
  local row = {}
  for _, row in ipairs(lst) do
    if row[x] ~= nil then
      break
    end
  end
  return row
end

-- Given a matrix as a nested list, return a list of tuples,
-- [(x1, y1), (x2, y2) ...] such that
-- each tuple is a coordinate - (row, columns), starting with 0.
-- Sort coordinates initially by rows in ascending order.
-- Also, sort coordinates of the row by columns in descending order.
-- Examples:
-- get_matrix([[1,2,3,4,5,6],
--             [1,2,3,4,1,6],
--             [1,2,3,4,5,1]]) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
-- get_matrix([], 1) == []
-- get_matrix([[[], [1], [1, 2, 3]], [1]]) == [(2, 2)]

lu = require('luaunit')

function test_humaneval()
local candidate = get_row
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 1, 6}, {1, 2, 3, 4, 5, 1}}, 1), {{0, 0}, {1, 4}, {1, 0}, {2, 5}, {2, 0}})
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}}, 2), {{0, 1}, {1, 1}, {2, 1}, {3, 1}, {4, 1}, {5, 1}})
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 1, 3, 4, 5, 6}, {1, 2, 1, 4, 5, 6}, {1, 2, 3, 1, 5, 6}, {1, 2, 3, 4, 1, 6}, {1, 2, 3, 4, 5, 1}}, 1), {{0, 0}, {1, 0}, {2, 1}, {2, 0}, {3, 2}, {3, 0}, {4, 3}, {4, 0}, {5, 4}, {5, 0}, {6, 5}, {6, 0}})
    lu.assertEquals(candidate({}, 1), {})
    lu.assertEquals(candidate({{1}}, 2), {})
    lu.assertEquals(candidate({{}, {1}, {1, 2, 3}}, 3), {{2, 2}})
end

os.exit(lu.LuaUnit.run())