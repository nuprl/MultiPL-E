-- You are given two intervals,
-- where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
-- The given intervals are closed which means that the interval (start, end)
-- includes both start and end.
-- For each given interval, it is assumed that its start is less or equal its end.
-- Your task is to determine whether the length of intersection of these two 
-- intervals is a prime number.
-- Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
-- which its length is 1, which not a prime number.
-- If the length of the intersection is a prime number, return "YES",
-- otherwise, return "NO".
-- If the two intervals don't intersect, return "NO".
-- [input/output] samples:
-- intersection((1, 2), (2, 3)) ==> "NO"
-- intersection((-1, 1), (0, 4)) ==> "NO"
-- intersection((-3, -1), (-5, 5)) ==> "YES"
local function intersection(interval1, interval2)
	local start = interval1[1]
	local end = interval1[2]
	local start2 = interval2[1]
	local end2 = interval2[2]
	local length1 = end - start
	local length2 = end2 - start2
	if length1 == 0 or length2 == 0 then
		return "NO"
	end
	if length1 == length2 then
		if start <= start2 then
			return "NO"
		else
			return "YES"
		end
	end
	if length1 > length2 then
		local temp = length1
		length1 = length2
		length2 = temp
	end
	if length1 == 1 then
		if start <= start2 then
			return "NO"
		else
			return "YES"
		end
	end
	if length2 == 1 then
		if start <= start2 then
			return "YES"
		else
			return "NO"
		end
	end
	if length1 > length2 then
		local temp = length1
		length1 = length2
		length2 = temp
	end
	local prime = true
	local prime2 = true
	local prime3 = true
	local prime4 = true
	local prime5 = true
	local prime6 = true
	local prime7 = true
	local prime8 = true
	local prime9 = true
	local prime10 = true
	local prime11 = true
	local prime12 = true
	local prime13 = true
	local prime14 = true
	local prime15 = true
	local prime16 = true
	local prime17 = true
	local prime18 = true
	local prime19 = true
	local prime20 = true
	local prime21 = true
	local prime22 = true
	local prime23 = true
	local prime24 = true
	local prime25 = true
	local prime26 = true
	local prime27 = true
	local prime28 = true
	local prime29 = true
	local prime30 = true
	local prime31 = true
	local prime32 = true
	local prime33 = true
	local prime34 = true
	local prime35 = true
	local prime36 = true
	local prime37 = true
	local prime38 = true
	local prime39 = true
	local prime40 = true
	local prime41 = true
	local prime42 = true
	local prime43 = true
	local prime44 = true
	local prime45 = true
	local prime46 = true
	local prime47 = true
	local prime48 = true
	local prime49 = true
	local prime50

lu = require('luaunit')

function test_humaneval()
local candidate = intersection
    lu.assertEquals(candidate({1, 2}, {2, 3}), 'NO')
    lu.assertEquals(candidate({-1, 1}, {0, 4}), 'NO')
    lu.assertEquals(candidate({-3, -1}, {-5, 5}), 'YES')
    lu.assertEquals(candidate({-2, 2}, {-4, 0}), 'YES')
    lu.assertEquals(candidate({-11, 2}, {-1, -1}), 'NO')
    lu.assertEquals(candidate({1, 2}, {3, 5}), 'NO')
    lu.assertEquals(candidate({1, 2}, {1, 2}), 'NO')
    lu.assertEquals(candidate({-2, -2}, {-3, -2}), 'NO')
end

os.exit(lu.LuaUnit.run())