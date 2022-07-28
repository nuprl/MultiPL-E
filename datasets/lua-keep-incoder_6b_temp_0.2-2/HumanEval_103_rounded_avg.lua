-- You are given two positive integers n and m, and your task is to compute the
-- average of the integers from n through m (including n and m). 
-- Round the answer to the nearest integer and convert that to binary.
-- If n is greater than m, return -1.
-- Example:
-- rounded_avg(1, 5) => "0b11"
-- rounded_avg(7, 5) => -1
-- rounded_avg(10, 20) => "0b1111"
-- rounded_avg(20, 33) => "0b11010"
local function rounded_avg(n, m)
  local nm = n .. m
  local nm_bin = tonumber(string.format("%b", nm))
  if nm_bin == nil then
    return -1
  end
  local nm_bin = math.floor(nm_bin)
  local nm_bin = string.format("%b", nm_bin)
  local nm_bin = string.format("%0*d", math.max(nm_bin:len(), 0), nm_bin)
  return nm_bin
end


lu = require('luaunit')

function test_humaneval()
local candidate = rounded_avg
    lu.assertEquals(candidate(1, 5), '0b11')
    lu.assertEquals(candidate(7, 13), '0b1010')
    lu.assertEquals(candidate(964, 977), '0b1111001010')
    lu.assertEquals(candidate(996, 997), '0b1111100100')
    lu.assertEquals(candidate(560, 851), '0b1011000010')
    lu.assertEquals(candidate(185, 546), '0b101101110')
    lu.assertEquals(candidate(362, 496), '0b110101101')
    lu.assertEquals(candidate(350, 902), '0b1001110010')
    lu.assertEquals(candidate(197, 233), '0b11010111')
    lu.assertEquals(candidate(7, 5), -1)
    lu.assertEquals(candidate(5, 1), -1)
    lu.assertEquals(candidate(5, 5), '0b101')
end

os.exit(lu.LuaUnit.run())