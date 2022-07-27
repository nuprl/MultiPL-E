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
	local hexadecimal = {}
	local primes = {}
	local prime_number = 0
	local prime_digit = 0
	local prime_digit_count = 0
	local prime_digit_count_2 = 0
	local prime_digit_count_3 = 0
	local prime_digit_count_4 = 0
	local prime_digit_count_5 = 0
	local prime_digit_count_6 = 0
	local prime_digit_count_7 = 0
	local prime_digit_count_8 = 0
	local prime_digit_count_9 = 0
	local prime_digit_count_10 = 0
	local prime_digit_count_11 = 0
	local prime_digit_count_12 = 0
	local prime_digit_count_13 = 0
	local prime_digit_count_14 = 0
	local prime_digit_count_15 = 0
	local prime_digit_count_16 = 0
	local prime_digit_count_17 = 0
	local prime_digit_count_18 = 0
	local prime_digit_count_19 = 0
	local prime_digit_count_20 = 0
	local prime_digit_count_21 = 0
	local prime_digit_count_22 = 0
	local prime_digit_count_23 = 0
	local prime_digit_count_24 = 0
	local prime_digit_count_25 = 0
	local prime_digit_count_26 = 0
	local prime_digit_count_27 = 0
	local prime_digit_count_28 = 0
	local prime_digit_count_29 = 0
	local prime_digit_count_30 = 0
	local prime_digit_count_31 = 0
	local prime_digit_count_32 = 0
	local prime_digit_count_33 = 0
	local prime_digit_count_34 = 0
	local prime_digit_count_35 = 0
	local prime_digit_count_36 = 0
	local prime_digit_count_37 = 0
	local prime_digit_count_38 = 0
	local prime_digit_count_39 = 0
	local prime_digit_count_40 = 0
	local prime_digit_count_41 = 0
	local prime_digit_count_42 = 0
	local prime_digit_count_43 = 0
	local prime_digit_count_44 = 0
	local prime_digit_count_45 = 0
	local prime_digit_count_46 = 0
	local prime_digit_count_47 = 0
	local prime_digit_count_48 = 0
	local prime_digit_count_49 = 0
	local prime_digit_count_50 = 0
	local prime_digit_count_51 = 0
	local prime_digit_count_52 = 0
	local prime_digit_count_53 = 0
	local prime_digit_count_54 = 0
	local 

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