-- Write a function that takes an integer a and returns True 
-- if this ingeger is a cube of some integer number.
-- Note: you may assume the input is always valid.
-- Examples:
-- iscube(1) ==> True
-- iscube(2) ==> False
-- iscube(-1) ==> True
-- iscube(64) ==> True
-- iscube(0) ==> True
-- iscube(180) ==> False
local function iscube(a)
  if a == 0 then
    return true
  end
  if a == 1 then
    return true
  end
  if a == 2 then
    return true
  end
  if a == 3 then
    return true
  end
  if a == 4 then
    return true
  end
  if a == 5 then
    return true
  end
  if a == 6 then
    return true
  end
  if a == 7 then
    return true
  end
  if a == 8 then
    return true
  end
  if a == 9 then
    return true
  end
  if a == 10 then
    return true
  end
  if a == 11 then
    return true
  end
  if a == 12 then
    return true
  end
  if a == 13 then
    return true
  end
  if a == 14 then
    return true
  end
  if a == 15 then
    return true
  end
  if a == 16 then
    return true
  end
  if a == 17 then
    return true
  end
  if a == 18 then
    return true
  end
  if a == 19 then
    return true
  end
  if a == 20 then
    return true
  end
  if a == 21 then
    return true
  end
  if a == 22 then
    return true
  end
  if a == 23 then
    return true
  end
  if a == 24 then
    return true
  end
  if a == 25 then
    return true
  end
  if a == 26 then
    return true
  end
  if a == 27 then
    return true
  end
  if a == 28 then
    return true
  end
  if a == 29 then
    return true
  end
  if a == 30 then
    return true
  end
  if a == 31 then
    return true
  end
  if a == 32 then
    return true
  end
  if a == 33 then
    return true
  end
  if a == 34 then
    return true
  end
  if a == 35 then
    return true
  end
  if a == 36 then
    return true
  end
  if a == 37 then
    return true
  end
  if a == 38 then
    return true
  end
  if a == 39 then
    return true
  end
  if a == 40 then
    return true
  end
  if a == 41 then
    return true
  end
  if a == 42 then
    return true
  end
  if a == 43 then
    return true
  end
  if a == 44 then
    return true
  end
  if a == 45 then
    return true
  end
  if a == 46 then
    return true
  end
  if a == 47 then
    return true
  end
  if a == 48 then
    return true
  end
  if a == 49 then
    return true
  end
  if a == 

lu = require('luaunit')

function test_humaneval()
local candidate = iscube
    lu.assertEquals(candidate(1), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(-1), true)
    lu.assertEquals(candidate(64), true)
    lu.assertEquals(candidate(180), false)
    lu.assertEquals(candidate(1000), true)
    lu.assertEquals(candidate(0), true)
    lu.assertEquals(candidate(1729), false)
end

os.exit(lu.LuaUnit.run())