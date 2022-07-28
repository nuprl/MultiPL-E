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
  local n1 = math.floor(n)
  local m1 = math.floor(m)
  local n2 = math.ceil(n)
  local m2 = math.ceil(m)
  local sum = 0
  local count = 0
  local sum1 = 0
  local count1 = 0
  local sum2 = 0
  local count2 = 0
  local sum3 = 0
  local count3 = 0
  local sum4 = 0
  local count4 = 0
  local sum5 = 0
  local count5 = 0
  local sum6 = 0
  local count6 = 0
  local sum7 = 0
  local count7 = 0
  local sum8 = 0
  local count8 = 0
  local sum9 = 0
  local count9 = 0
  local sum10 = 0
  local count10 = 0
  local sum11 = 0
  local count11 = 0
  local sum12 = 0
  local count12 = 0
  local sum13 = 0
  local count13 = 0
  local sum14 = 0
  local count14 = 0
  local sum15 = 0
  local count15 = 0
  local sum16 = 0
  local count16 = 0
  local sum17 = 0
  local count17 = 0
  local sum18 = 0
  local count18 = 0
  local sum19 = 0
  local count19 = 0
  local sum20 = 0
  local count20 = 0
  local sum21 = 0
  local count21 = 0
  local sum22 = 0
  local count22 = 0
  local sum23 = 0
  local count23 = 0
  local sum24 = 0
  local count24 = 0
  local sum25 = 0
  local count25 = 0
  local sum26 = 0
  local count26 = 0
  local sum27 = 0
  local count27 = 0
  local sum28 = 0
  local count28 = 0
  local sum29 = 0
  local count29 = 0
  local sum30 = 0
  local count30 = 0
  local sum31 = 0
  local count31 = 0
  local sum32 = 0
  local count32 = 0
  local sum33 = 0
  local count33 = 0
  local sum34 = 0
  local count34 = 0
  local sum35 = 0
  local count35 = 0
  local sum36 = 0
  local count36 = 0
  local sum37 = 0
  local count37 = 0
  local sum38 = 0
  local count38 = 0
  local sum39 = 0
  local count39 = 0
  local sum

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