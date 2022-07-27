-- Given two lists operator, and operand. The first list has basic algebra operations, and 
-- the second list is a list of integers. Use the two given lists to build the algebric 
-- expression and return the evaluation of this expression.
-- The basic algebra operations:
-- Addition ( + ) 
-- Subtraction ( - ) 
-- Multiplication ( * ) 
-- Floor division ( // ) 
-- Exponentiation ( ** ) 
-- Example:
-- operator['+', '*', '-']
-- array = [2, 3, 4, 5]
-- result = 2 + 3 * 4 - 5
-- => result = 9
-- Note:
-- The length of operator list is equal to the length of operand list minus one.
-- Operand is a list of of non-negative integers.
-- Operator list has at least one operator, and operand list has at least two operands.
local function do_algebra(operator, operand)
    local result = operand[1]
    for i = 2, #operand do
        result = result + (operator[i - 1] == '+' and operand[i] or -operand[i])
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = do_algebra
    lu.assertEquals(candidate({'**', '*', '+'}, {2, 3, 4, 5}), 37)
    lu.assertEquals(candidate({'+', '*', '-'}, {2, 3, 4, 5}), 9)
    lu.assertEquals(candidate({'//', '*'}, {7, 3, 4}), 8)
end

os.exit(lu.LuaUnit.run())