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
    if [[ $1 == "Mercury" ]] && [[ $2 == "Neptune" ]]; then
        echo "Venus"
    elif [[ $1 == "Venus" ]] && [[ $2 == "Neptune" ]]; then
        echo "Earth"
    elif [[ $1 == "Earth" ]] && [[ $2 == "Neptune" ]]; then
        echo "Mars"
    elif [[ $1 == "Mars" ]] && [[ $2 == "Neptune" ]]; then
        echo "Jupiter"
    elif [[ $1 == "Jupiter" ]] && [[ $2 == "Neptune" ]]; then
        echo "Saturn"
    elif [[ $1 == "Saturn" ]] && [[ $2 == "Neptune" ]]; then
        echo "Uranus"
    elif [[ $1 == "Uranus" ]] && [[ $2 == "Neptune" ]]; then
        echo "Neptune"
    elif [[ $1 == "Neptune" ]] && [[ $2 == "Uranus" ]]; then
        echo "Pluto"
    elif [[ $1 == "Pluto" ]] && [[ $2 == "Uranus" ]]; then
        echo "Neptune"
    elif [[ $1 == "Neptune" ]] && [[ $2 == "Pluto" ]]; then
        echo "Uranus"
    elif [[ $1 == "Uranus" ]] && [[ $2 == "Pluto" ]]; then
        echo "Saturn"
    elif [[ $1 == "Saturn" ]] && [[ $2 == "Pluto" ]]; then
        echo "Jupiter"
    elif [[ $1 == "Jupiter" ]] && [[ $2 == "Pluto" ]]; then
        echo "Mars"
    elif [[ $1 == "Mars" ]] && [[ $2 == "Pluto" ]]; then
        echo "Earth"
    elif [[ $1 == "Earth" ]] && [[ $2 == "Pluto" ]]; then
        echo "

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