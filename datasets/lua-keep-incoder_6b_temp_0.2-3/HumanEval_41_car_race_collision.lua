-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
  -- The first thing we do is create a table of cars whose positions are all the
  -- same.
  local cars = {}
  for i = 1, n do
    table.insert(cars, {x = 0, y = 0, vx = 0, vy = 0, speed = 0})
  end

  -- Now we simulate race collisions by moving each car one step forward.
  local collisions = 0
  for i = 1, n do
    -- Move the car to the right.
    cars[i].x = cars[i].x + cars[i].speed
    -- If the car is moving right to left, move it left instead.
    if cars[i].x > WIDTH then
      cars[i].x = WIDTH
      cars[i].vx = -cars[i].speed
    end
    -- If the car is moving left to right, move it right instead.
    if cars[i].x < 0 then
      cars[i].x = 0
      cars[i].vx = cars[i].speed
    end
    -- Move the car down.
    cars[i].y = cars[i].y + cars[i].speed
    -- If the car is moving down to up, move it up instead.
    if cars[i].y > HEIGHT then
      cars[i].y = HEIGHT
      cars[i].vy = -cars[i].speed
    end
    -- If the car is moving up to down, move it down instead.
    if cars[i].y < 0 then
      cars[i].y = 0
      cars[i].vy = cars[i].speed
    end
    -- If the car is colliding with another car, increment the collision count.
    collisions = collisions + 1
    for j = 1, n do
      -- If the car is colliding with another car, increment the collision count.
      if i == j then
        collisions = collisions + 1
      end
    end
  end

  return collisions
end

-- This function outputs the number of cars whose positions are all zero.

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