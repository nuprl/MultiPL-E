-- Create a function that takes a string as input which contains only square brackets.
-- The function should return True if and only if there is a valid subsequence of brackets 
-- where at least one bracket in the subsequence is nested.
-- is_nested('[[]]') ➞ True
-- is_nested('[]]]]]]][[[[[]') ➞ False
-- is_nested('[][]') ➞ False
-- is_nested('[]') ➞ False
-- is_nested('[[][]]') ➞ True
-- is_nested('[[]][[') ➞ True
local function is_nested(string)
	-- Create a stack of brackets
	local stack = {}
	-- Iterate through the string and push brackets to the stack
	for i = 1, #string do
		if string[i] == '[' then
			table.insert(stack, string[i])
		elseif string[i] == ']' then
			-- If the stack is empty then we found a nested bracket
			if #stack == 0 then
				return true
			end
			-- Pop the top bracket from the stack
			local top = stack[#stack]
			-- If the top bracket is another bracket then we found a nested bracket
			if top == '[' then
				return true
			end
			-- If the top bracket is another bracket then we found a nested bracket
			if top == ']' then
				return true
			end
		else
			-- If the stack is empty then we found a nested bracket
			if #stack == 0 then
				return false
			end
		end
	end
	return false
end

-- Create a function that takes a string as input which contains only square brackets.
-- The function should return True if and only if there is a valid subsequence of brackets 
-- where at least one bracket in the subsequence is nested.
-- is_nested('[[]]') ➞ True
-- is_nested('[]]]]]]][[[[[]') ➞ False
-- is_nested('[][]') ➞ False
-- is_nested('[]') ➞ False
-- is_nested('[[][]]') ➞ True
-- is_nested('[[]][[') ➞ True

lu = require('luaunit')

function test_humaneval()
local candidate = is_nested
    lu.assertEquals(candidate('[[]]'), true)
    lu.assertEquals(candidate('[]]]]]]][[[[[]'), false)
    lu.assertEquals(candidate('[][]'), false)
    lu.assertEquals(candidate('[]'), false)
    lu.assertEquals(candidate('[[[[]]]]'), true)
    lu.assertEquals(candidate('[]]]]]]]]]]'), false)
    lu.assertEquals(candidate('[][][[]]'), true)
    lu.assertEquals(candidate('[[]'), false)
    lu.assertEquals(candidate('[]]'), false)
    lu.assertEquals(candidate('[[]][['), true)
    lu.assertEquals(candidate('[[][]]'), true)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('[[[[[[[['), false)
    lu.assertEquals(candidate(']]]]]]]]'), false)
end

os.exit(lu.LuaUnit.run())