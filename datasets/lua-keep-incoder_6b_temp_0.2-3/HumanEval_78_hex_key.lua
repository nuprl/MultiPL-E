-- You have been tasked to write a function that receives 
-- a hexadecimal number as a string and counts the number of hexadecimal 
-- digits that are primes (prime number, or a prime, is a natural number 
-- greater than 1 that is not a product of two smaller natural numbers).
-- Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
-- Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
-- So you have to determine a number of the following digits: 2, 3, 5, 7, 
-- B (=decimal 11), D (=decimal 13).
-- Note: you may assume the input is always correct or empty string, 
-- and symbols A,B,C,D,E,F are always uppercase.
-- Examples:
-- For num = "AB" the output should be 1.
-- For num = "1077E" the output should be 2.
-- For num = "ABED1A33" the output should be 4.
-- For num = "123456789ABCDEF0" the output should be 6.
-- For num = "2020" the output should be 2.
local function hex_key(num)
  local primes = {}
  local primes_count = 0
  local digits = {}
  local digits_count = 0
  local digits_sum = 0
  local digits_sum2 = 0
  local digits_sum3 = 0
  local digits_sum4 = 0
  local digits_sum5 = 0
  local digits_sum6 = 0
  local digits_sum7 = 0
  local digits_sum8 = 0
  local digits_sum9 = 0
  local digits_sum10 = 0
  local digits_sum11 = 0
  local digits_sum12 = 0
  local digits_sum13 = 0
  local digits_sum14 = 0
  local digits_sum15 = 0
  local digits_sum16 = 0
  local digits_sum17 = 0
  local digits_sum18 = 0
  local digits_sum19 = 0
  local digits_sum20 = 0
  local digits_sum21 = 0
  local digits_sum22 = 0
  local digits_sum23 = 0
  local digits_sum24 = 0
  local digits_sum25 = 0
  local digits_sum26 = 0
  local digits_sum27 = 0
  local digits_sum28 = 0
  local digits_sum29 = 0
  local digits_sum30 = 0
  local digits_sum31 = 0
  local digits_sum32 = 0
  local digits_sum33 = 0
  local digits_sum34 = 0
  local digits_sum35 = 0
  local digits_sum36 = 0
  local digits_sum37 = 0
  local digits_sum38 = 0
  local digits_sum39 = 0
  local digits_sum40 = 0
  local digits_sum41 = 0
  local digits_sum42 = 0
  local digits_sum43 = 0
  local digits_sum44 = 0
  local digits_sum45 = 0
  local digits_sum46 = 0
  local digits_sum47 = 0
  local digits_sum48 = 0
  local digits_sum49 = 0
  local digits_sum50 = 0
  local digits_sum51 = 0
  local digits_sum52 = 0
  local digits_sum53 = 0
  local digits_sum54 = 0
  local digits_sum55 = 0
  local digits_sum56 = 0
  local digits_sum57 = 0
  local digits_sum58 = 0
  local digits_sum59 = 0
  local digits_sum60 = 0
  local digits_sum61 = 0
  local digit

lu = require('luaunit')

function test_humaneval()
local candidate = hex_key
    lu.assertEquals(candidate('AB'), 1)
    lu.assertEquals(candidate('1077E'), 2)
    lu.assertEquals(candidate('ABED1A33'), 4)
    lu.assertEquals(candidate('2020'), 2)
    lu.assertEquals(candidate('123456789ABCDEF0'), 6)
    lu.assertEquals(candidate('112233445566778899AABBCCDDEEFF00'), 12)
end

os.exit(lu.LuaUnit.run())