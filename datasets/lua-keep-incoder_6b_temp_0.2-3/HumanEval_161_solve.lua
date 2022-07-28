-- You are given a string s.
-- if s[i] is a letter, reverse its case from lower to upper or vise versa, 
-- otherwise keep it as it is.
-- If the string contains no letters, reverse the string.
-- The function should return the resulted string.
-- Examples
-- solve("1234") = "4321"
-- solve("ab") = "AB"
-- solve("#a@C") = "#A@c"
local function solve(s)
  local result = ""
  for i = 1, #s do
    if string.sub(s,i,i) ~= nil then
      result = string.sub(s,i,i)
    else
      result = string.sub(s,i,#s)
    end
  end
  return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = solve
    lu.assertEquals(candidate('AsDf'), 'aSdF')
    lu.assertEquals(candidate('1234'), '4321')
    lu.assertEquals(candidate('ab'), 'AB')
    lu.assertEquals(candidate('#a@C'), '#A@c')
    lu.assertEquals(candidate('#AsdfW^45'), '#aSDFw^45')
    lu.assertEquals(candidate('#6@2'), '2@6#')
    lu.assertEquals(candidate('#$a^D'), '#$A^d')
    lu.assertEquals(candidate('#ccc'), '#CCC')
end

os.exit(lu.LuaUnit.run())