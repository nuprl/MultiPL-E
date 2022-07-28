-- Given a positive integer n, return the product of the odd digits.
-- Return 0 if all digits are even.
-- For example:
-- digits(1)  == 1
-- digits(4)  == 0
-- digits(235) == 15
local function digits(n)
  if n < 0 then
    return 0
  end
  local n1 = math.floor(n)
  local n2 = math.floor(n/10)
  local n3 = math.floor(n/100)
  local n4 = math.floor(n/1000)
  local n5 = math.floor(n/10000)
  local n6 = math.floor(n/100000)
  local n7 = math.floor(n/1000000)
  local n8 = math.floor(n/10000000)
  local n9 = math.floor(n/100000000)
  local n10 = math.floor(n/1000000000)
  local n11 = math.floor(n/10000000000)
  local n12 = math.floor(n/100000000000)
  local n13 = math.floor(n/1000000000000)
  local n14 = math.floor(n/10000000000000)
  local n15 = math.floor(n/100000000000000)
  local n16 = math.floor(n/1000000000000000)
  local n17 = math.floor(n/10000000000000000)
  local n18 = math.floor(n/100000000000000000)
  local n19 = math.floor(n/100000000000000001)
  local n20 = math.floor(n/100000000000000002)
  local n21 = math.floor(n/100000000000000003)
  local n22 = math.floor(n/100000000000000004)
  local n23 = math.floor(n/100000000000000005)
  local n24 = math.floor(n/100000000000000006)
  local n25 = math.floor(n/100000000000000007)
  local n26 = math.floor(n/100000000000000008)
  local n27 = math.floor(n/100000000000000009)
  local n28 = math.floor(n/100000000000000010)
  local n29 = math.floor(n/100000000000000011)
  local n30 = math.floor(n/100000000000000012)
  local n31 = math.floor(n/100000000000000013)
  local n32 = math.floor(n/100000000000000014)
  local n33 = math.floor(n/100000000000000015)
  local n34 = math.floor(n/100000000000000016)
  local n35 = math.floor(n/100000000000000017)
  local n36 = math.floor(n/100000000000000018)
  local n37 = math.floor(n/100000000000000019)
  local n38 = math.floor(n/100000000000000020)
  local n39 = math.floor(n/100

lu = require('luaunit')

function test_humaneval()
local candidate = digits
    lu.assertEquals(candidate(5), 5)
    lu.assertEquals(candidate(54), 5)
    lu.assertEquals(candidate(120), 1)
    lu.assertEquals(candidate(5014), 5)
    lu.assertEquals(candidate(98765), 315)
    lu.assertEquals(candidate(5576543), 2625)
    lu.assertEquals(candidate(2468), 0)
end

os.exit(lu.LuaUnit.run())