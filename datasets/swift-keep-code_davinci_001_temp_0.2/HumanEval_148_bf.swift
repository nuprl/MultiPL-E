// There are eight planets in our solar system: the closerst to the Sun 
// is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
// Uranus, Neptune.
// Write a function that takes two planet names as strings planet1 and planet2. 
// The function should return a tuple containing all planets whose orbits are 
// located between the orbit of planet1 and the orbit of planet2, sorted by 
// the proximity to the sun. 
// The function should return an empty tuple if planet1 or planet2
// are not correct planet names. 
// Examples
// bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
// bf("Earth", "Mercury") ==> ("Venus")
// bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
func bf(planet1: String, planet2: String) -> [String] {
	fatalError("unimplemented")

}

assert(bf(planet1: Jupiter, planet2: Neptune) == (Saturn, Uranus))
assert(bf(planet1: Earth, planet2: Mercury) == (Venus))
assert(bf(planet1: Mercury, planet2: Uranus) == (Venus, Earth, Mars, Jupiter, Saturn))
assert(bf(planet1: Neptune, planet2: Venus) == (Earth, Mars, Jupiter, Saturn, Uranus))
assert(bf(planet1: Earth, planet2: Earth) == ())
assert(bf(planet1: Mars, planet2: Earth) == ())
assert(bf(planet1: Jupiter, planet2: Makemake) == ())