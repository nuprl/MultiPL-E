-- Write a function that takes a string and returns True if the string
-- length is a prime number or False otherwise
-- Examples
-- prime_length('Hello') == True
-- prime_length('abcdcba') == True
-- prime_length('kittens') == True
-- prime_length('orange') == False
local function prime_length(string)
  -- Your code here
end

-- Write a function that takes a string and returns True if the
-- string contains only letters or False otherwise
-- Examples
-- letters_only('Hello') == True
-- letters_only('abcdcba') == True
-- letters_only('kittens') == False

lu = require('luaunit')

function test_humaneval()
local candidate = prime_length
    lu.assertEquals(candidate('Hello'), true)
    lu.assertEquals(candidate('abcdcba'), true)
    lu.assertEquals(candidate('kittens'), true)
    lu.assertEquals(candidate('orange'), false)
    lu.assertEquals(candidate('wow'), true)
    lu.assertEquals(candidate('world'), true)
    lu.assertEquals(candidate('MadaM'), true)
    lu.assertEquals(candidate('Wow'), true)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('HI'), true)
    lu.assertEquals(candidate('go'), true)
    lu.assertEquals(candidate('gogo'), false)
    lu.assertEquals(candidate('aaaaaaaaaaaaaaa'), false)
    lu.assertEquals(candidate('Madam'), true)
    lu.assertEquals(candidate('M'), false)
    lu.assertEquals(candidate('0'), false)
end

os.exit(lu.LuaUnit.run())