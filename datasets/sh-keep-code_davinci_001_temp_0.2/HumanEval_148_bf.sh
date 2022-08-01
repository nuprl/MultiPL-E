#!/bin/bash
# There are eight planets in our solar system: the closerst to the Sun 
# is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
# Uranus, Neptune.
# Write a function that takes two planet names as strings planet1 and planet2. 
# The function should return a tuple containing all planets whose orbits are 
# located between the orbit of planet1 and the orbit of planet2, sorted by 
# the proximity to the sun. 
# The function should return an empty tuple if planet1 or planet2
# are not correct planet names. 
# Examples
# bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
# bf("Earth", "Mercury") ==> ("Venus")
# bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
#
# $1 is a string
# $2 is a string
bf() {
echo 0

}

candidate() {
    bf "$@"
}

run_test() {
    [[ $(candidate Jupiter Neptune) = "Saturn Uranus" ]]
    [[ $(candidate Earth Mercury) = "Venus" ]]
    [[ $(candidate Mercury Uranus) = "Venus Earth Mars Jupiter Saturn" ]]
    [[ $(candidate Neptune Venus) = "Earth Mars Jupiter Saturn Uranus" ]]
    [[ $(candidate Earth Earth) = "" ]]
    [[ $(candidate Mars Earth) = "" ]]
    [[ $(candidate Jupiter Makemake) = "" ]]
}

run_test