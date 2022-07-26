-- There are eight planets in our solar system: the closerst to the Sun 
-- is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
-- Uranus, Neptune.
-- Write a function that takes two planet names as strings planet1 and planet2. 
-- The function should return a tuple containing all planets whose orbits are 
-- located between the orbit of planet1 and the orbit of planet2, sorted by 
-- the proximity to the sun. 
-- The function should return an empty tuple if planet1 or planet2
-- are not correct planet names. 
-- Examples
-- bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
-- bf("Earth", "Mercury") ==> ("Venus")
-- bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
local function bf(planet1, planet2)
  local planets = {
    "Mercury",
    "Venus",
    "Earth",
    "Mars",
    "Jupiter",
    "Saturn",
    "Uranus",
    "Neptune"
  }
  local planet1_index = nil
  local planet2_index = nil
  local result = {}
  for i, v in ipairs(planets) do
    if v == planet1 then
      planet1_index = i
    elseif v == planet2 then
      planet2_index = i
    end
  end
  if planet1_index == nil or planet2_index == nil then
    return {}
  end
  for i = planet1_index, planet2_index do
    table.insert(result, planets[i])
  end
  return result
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = bf
    lu.assertEquals(candidate('Jupiter', 'Neptune'), {'Saturn', 'Uranus'})
    lu.assertEquals(candidate('Earth', 'Mercury'), {'Venus'})
    lu.assertEquals(candidate('Mercury', 'Uranus'), {'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'})
    lu.assertEquals(candidate('Neptune', 'Venus'), {'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus'})
    lu.assertEquals(candidate('Earth', 'Earth'), {})
    lu.assertEquals(candidate('Mars', 'Earth'), {})
    lu.assertEquals(candidate('Jupiter', 'Makemake'), {})
end

os.exit(lu.LuaUnit.run())