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
	local planets = {}
	local sun = math.rad(math.pi/2)
	local sun_dist = math.sqrt((math.pow(math.sin(sun), 2) + math.pow(math.cos(sun), 2))/2)
	local planet_dist = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist2 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist3 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist4 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist5 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist6 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist7 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist8 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist9 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist10 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist11 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist12 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist13 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.rad(planet2)), 2))/2)
	local planet_dist14 = math.sqrt((math.pow(math.sin(math.rad(planet2)), 2) + math.pow(math.cos(math.rad(planet1)), 2))/2)
	local planet_dist15 = math.sqrt((math.pow(math.sin(math.rad(planet1)), 2) + math.pow(math.cos(math.

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