-- Create a function that returns True if the last character
-- of a given string is an alphabetical character and is not
-- a part of a word, and False otherwise.
-- Note: "word" is a group of characters separated by space.
-- Examples:
-- check_if_last_char_is_a_letter("apple pie") ➞ False
-- check_if_last_char_is_a_letter("apple pi e") ➞ True
-- check_if_last_char_is_a_letter("apple pi e ") ➞ False
-- check_if_last_char_is_a_letter("") ➞ False
local function check_if_last_char_is_a_letter(txt)
  local last_char = txt:sub(1, #txt)
  return last_char:match("^[%w]$")
end

-- Create a function that returns True if the last character
-- of a given string is a digit, and False otherwise.
-- Examples:
-- check_if_last_char_is_a_digit("apple pie") ➞ False
-- check_if_last_char_is_a_digit("apple pi e") ➞ True
-- check_if_last_char_is_a_digit("apple pi e ") ➞ False
-- check_if_last_char_is_a_digit("") ➞ False

lu = require('luaunit')

function test_humaneval()
local candidate = check_if_last_char_is_a_letter
    lu.assertEquals(candidate('apple'), false)
    lu.assertEquals(candidate('apple pi e'), true)
    lu.assertEquals(candidate('eeeee'), false)
    lu.assertEquals(candidate('A'), true)
    lu.assertEquals(candidate('Pumpkin pie '), false)
    lu.assertEquals(candidate('Pumpkin pie 1'), false)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('eeeee e '), false)
    lu.assertEquals(candidate('apple pie'), false)
    lu.assertEquals(candidate('apple pi e '), false)
end

os.exit(lu.LuaUnit.run())