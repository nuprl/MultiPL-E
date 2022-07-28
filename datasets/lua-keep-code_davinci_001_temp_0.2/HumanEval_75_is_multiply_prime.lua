-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- is_multiply_prime(30) == True
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
  local i = 2
  local j = 2
  local k = 2
  local l = 2
  local m = 2
  local n = 2
  local o = 2
  local p = 2
  local q = 2
  local r = 2
  local s = 2
  local t = 2
  local u = 2
  local v = 2
  local w = 2
  local x = 2
  local y = 2
  local z = 2
  local aa = 2
  local bb = 2
  local cc = 2
  local dd = 2
  local ee = 2
  local ff = 2
  local gg = 2
  local hh = 2
  local ii = 2
  local jj = 2
  local kk = 2
  local ll = 2
  local mm = 2
  local nn = 2
  local oo = 2
  local pp = 2
  local qq = 2
  local rr = 2
  local ss = 2
  local tt = 2
  local uu = 2
  local vv = 2
  local ww = 2
  local xx = 2
  local yy = 2
  local zz = 2
  local aaa = 2
  local bbb = 2
  local ccc = 2
  local ddd = 2
  local eee = 2
  local fff = 2
  local ggg = 2
  local hhh = 2
  local iii = 2
  local jjj = 2
  local kkk = 2
  local lll = 2
  local mmm = 2
  local nnn = 2
  local ooo = 2
  local ppp = 2
  local qqq = 2
  local rrr = 2
  local sss = 2
  local ttt = 2
  local uuu = 2
  local vvv = 2
  local www = 2
  local xxx = 2
  local yyy = 2
  local zzz = 2
  local aaaa = 2
  local bbbb = 2
  local cccc = 2
  local dddd = 2
  local eeee = 2

lu = require('luaunit')

function test_humaneval()
local candidate = is_multiply_prime
    lu.assertEquals(candidate(5), false)
    lu.assertEquals(candidate(30), true)
    lu.assertEquals(candidate(8), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(125), true)
    lu.assertEquals(candidate(105), true)
    lu.assertEquals(candidate(126), false)
    lu.assertEquals(candidate(729), false)
    lu.assertEquals(candidate(891), false)
    lu.assertEquals(candidate(1001), true)
end

os.exit(lu.LuaUnit.run())