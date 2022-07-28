-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
  local collisions = 0
  local cars = {}
  for i = 1, n do
    cars[i] = {
      position = 0,
      direction = 1,
      speed = 1,
    }
  end
  for i = 1, n do
    for j = 1, n do
      if i ~= j then
        if cars[i].position == cars[j].position then
          collisions = collisions + 1
        end
      end
    end
    for j = 1, n do
      cars[j].position = cars[j].position + cars[j].direction * cars[j].speed
    end
  end
  return collisions
end

lu = require('luaunit')

function test_humaneval()
local candidate = car_race_collision
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 9)
    lu.assertEquals(candidate(4), 16)
    lu.assertEquals(candidate(8), 64)
    lu.assertEquals(candidate(10), 100)
end

os.exit(lu.LuaUnit.run())