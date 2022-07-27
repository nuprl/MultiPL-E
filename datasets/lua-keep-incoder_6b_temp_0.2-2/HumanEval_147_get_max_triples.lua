-- You are given a positive integer n. You have to create an integer array a of length n.
-- For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
-- Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
-- and a[i] + a[j] + a[k] is a multiple of 3.
-- Example :
-- Input: n = 5
-- Output: 1
-- Explanation: 
-- a = [1, 3, 7, 13, 21]
-- The only valid triple is (1, 7, 13).
local function get_max_triples(n)
    local a = {}
    for i = 1, n do
        a[i] = i * i - i + 1
    end
    local count = 0
    for i = 1, n do
        for j = 1, n do
            for k = 1, n do
                if i < j and j < k and a[i + j + k] == a[j + k] then
                    count = count + 1
                end
            end
        end
    end
    return count
end


lu = require('luaunit')

function test_humaneval()
local candidate = get_max_triples
    lu.assertEquals(candidate(5), 1)
    lu.assertEquals(candidate(6), 4)
    lu.assertEquals(candidate(10), 36)
    lu.assertEquals(candidate(100), 53361)
end

os.exit(lu.LuaUnit.run())