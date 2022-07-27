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
    local planet1orbit = planet1 .. "orbit"
    local planet2orbit = planet2 .. "orbit"
    local planet1sun = planet1 .. "sun"
    local planet2sun = planet2 .. "sun"
    local planet1orbitsun = planet1orbit .. "sun"
    local planet2orbitsun = planet2orbit .. "sun"
    local planet1orbitorbitsun = planet1orbit .. "orbit" .. "sun"
    local planet2orbitorbitsun = planet2orbit .. "orbit" .. "sun"
    local planet1orbitorbitorbitsun = planet1orbit .. "orbit" .. "orbit" .. "sun"
    local planet2orbitorbitorbitsun = planet2orbit .. "orbit" .. "orbit" .. "sun"
    local planet1orbitorbitorbitorbitsun = planet1orbit .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet2orbitorbitorbitorbitsun = planet2orbit .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet1orbitorbitorbitorbitorbitsun = planet1orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet2orbitorbitorbitorbitorbitsun = planet2orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet1orbitorbitorbitorbitorbitorbitsun = planet1orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet2orbitorbitorbitorbitorbitsun = planet2orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet1orbitorbitorbitorbitorbitorbitsun = planet1orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "sun"
    local planet2orbitorbitorbitorbitorbitsun = planet2orbit .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit" .. "orbit

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