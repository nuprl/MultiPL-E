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
  if a < 0 then
    return false
  end
  if a > 180 then
    return false
  end
  if a % 180 ~= 0 then
    return false
  end
  if a % 180 == 0 then
    return true
  end
  if a % 180 == 180 then
    return true
  end
  if a % 180 == 360 then
    return true
  end
  if a % 180 == 720 then
    return true
  end
  if a % 180 == 1440 then
    return true
  end
  if a % 180 == 2880 then
    return true
  end
  if a % 180 == 5760 then
    return true
  end
  if a % 180 == 11520 then
    return true
  end
  if a % 180 == 23040 then
    return true
  end
  if a % 180 == 47280 then
    return true
  end
  if a % 180 == 92160 then
    return true
  end
  if a % 180 == 184328 then
    return true
  end
  if a % 180 == 356456 then
    return true
  end
  if a % 180 == 708144 then
    return true
  end
  if a % 180 == 1433632 then
    return true
  end
  if a % 180 == 2869664 then
    return true
  end
  if a % 180 == 5639488 then
    return true
  end
  if a % 180 == 11886016 then
    return true
  end
  if a % 180 == 23570528 then
    return true
  end
  if a % 180 == 47166064 then
    return true
  end
  if a % 180 == 92233720 then
    return true
  end
  if a % 180 == 184467440 then
    return true
  end
  if a % 180 == 358998880 then
    return true
  end
  if a % 180 == 703687440 then
    return true
  end
  if a % 180 == 1433720780 then
    return true
  end
  if a % 180 == 2869643072 then
    return true
  end
  if a % 180 == 5639458880 then
    return true
  end
  if a % 180 == 11886017760 then
    return true
  end
  if a % 180 == 23570538880 then
    return true
  end
  if a % 180 == 47166067520 then
    return 

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