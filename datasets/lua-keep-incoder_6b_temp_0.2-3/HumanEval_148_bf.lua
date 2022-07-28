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
	local planet1, planet2 = string.lower(planet1), string.lower(planet2)
	local planet1_orbit, planet2_orbit = planet1_orbits[planet1], planet2_orbits[planet2]
	local sun_orbit = sun_orbits[planet1]
	local sun_distance = math.abs(sun_orbit.x - sun_orbit.y)
	local planet1_distance, planet2_distance = math.abs(planet1_orbit.x - planet2_orbit.x), math.abs(planet1_orbit.y - planet2_orbit.y)
	local planet1_proximity, planet2_proximity = math.abs(planet1_orbit.x - sun_orbit.x) + math.abs(planet1_orbit.y - sun_orbit.y), math.abs(planet2_orbit.x - sun_orbit.x) + math.abs(planet2_orbit.y - sun_orbit.y)
	local planet1_proximity_sorted, planet2_proximity_sorted = math.abs(planet1_proximity - sun_distance), math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index = math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index_index = math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index_index_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index_index_index = math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index_index_index_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index_index_index_index = math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index_index_index_index_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index_index_index_index_index = math.abs(planet2_proximity - sun_distance)
	local planet1_proximity_sorted_index_index_index_index_index_index = math.abs(planet1_proximity - sun_distance)
	local planet2_proximity_sorted_index_index_index_index_index_index = math.abs(planet

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