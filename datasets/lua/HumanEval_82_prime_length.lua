-- Write a function that takes a string and returns True if the string
-- length is a prime number or False otherwise
-- Examples
-- prime_length('Hello') == True
-- prime_length('abcdcba') == True
-- prime_length('kittens') == True
-- prime_length('orange') == False
local function prime_length(string)
  local function is_prime(num)
    for i = 2, num - 1 do
      if num % i == 0 then
        return false
      end
    end
    return true
  end
  return is_prime(string.len(string))
end
-- Unit tests below

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