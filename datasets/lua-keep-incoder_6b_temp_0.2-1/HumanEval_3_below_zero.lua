-- You're given a list of deposit and withdrawal operations on a bank account that starts with
-- zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
-- at that point function should return True. Otherwise it should return False.
-- >>> below_zero([1, 2, 3])
-- False
-- >>> below_zero([1, 2, -4, 5])
-- True
local function below_zero(operations)
  local balance = 0
  for _, operation in ipairs(operations) do
    if operation == "deposit" then
      balance = balance + operations[1]
    elseif operation == "withdraw" then
      balance = balance - operations[1]
    end
  end
  return balance < 0
end


lu = require('luaunit')

function test_humaneval()
local candidate = below_zero
    lu.assertEquals(candidate({}), false)
    lu.assertEquals(candidate({1, 2, -3, 1, 2, -3}), false)
    lu.assertEquals(candidate({1, 2, -4, 5, 6}), true)
    lu.assertEquals(candidate({1, -1, 2, -2, 5, -5, 4, -4}), false)
    lu.assertEquals(candidate({1, -1, 2, -2, 5, -5, 4, -5}), true)
    lu.assertEquals(candidate({1, -2, 2, -2, 5, -5, 4, -4}), true)
end

os.exit(lu.LuaUnit.run())