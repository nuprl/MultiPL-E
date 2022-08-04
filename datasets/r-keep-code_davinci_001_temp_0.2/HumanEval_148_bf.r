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
# >>> bf("Jupiter", "Neptune")
# ("Saturn", "Uranus")
# >>> bf("Earth", "Mercury")
# ("Venus")
# >>> bf("Mercury", "Uranus")
# ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
bf <- function(planet1, planet2) {
    if (planet1 == "Mercury") {
        if (planet2 == "Venus") {
            return(c("Mercury", "Venus"))
        } else if (planet2 == "Earth") {
            return(c("Mercury", "Venus", "Earth"))
        } else if (planet2 == "Mars") {
            return(c("Mercury", "Venus", "Earth", "Mars"))
        } else if (planet2 == "Jupiter") {
            return(c("Mercury", "Venus", "Earth", "Mars", "Jupiter"))
        } else if (planet2 == "Saturn") {
            return(c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn"))
        } else if (planet2 == "Uranus") {
            return(c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus"))
        } else if (planet2 == "Neptune") {
            return(c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"))
        } else {
            return(c())
        }
    } else if (planet1 == "Venus") {
        if (planet2 == "Earth") {
            return(c("Venus", "Earth"))
        } else if (planet2 == "Mars") {
            return(c("Venus", "Earth", "Mars"))
        } else if (planet2 == "Jupiter") {
            return(c("Venus", "Earth", "Mars", "Jupiter"))
        } else if (planet2 == "Saturn") {
            return(c("Venus", "Earth", "Mars", "Jupiter", "Saturn"))
        } else if (planet2 == "Uranus") {
            return(c("Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus"))
        } else if (planet2 == "Neptune") {
            return(c("Venus", "Earth", "Mars", "J

test_humaneval <- function() {
candidate <- bf
    if(!identical(candidate('Jupiter', 'Neptune'), list('Saturn', 'Uranus'))){quit('no', 1)}
    if(!identical(candidate('Earth', 'Mercury'), list('Venus'))){quit('no', 1)}
    if(!identical(candidate('Mercury', 'Uranus'), list('Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'))){quit('no', 1)}
    if(!identical(candidate('Neptune', 'Venus'), list('Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus'))){quit('no', 1)}
    if(!identical(candidate('Earth', 'Earth'), list())){quit('no', 1)}
    if(!identical(candidate('Mars', 'Earth'), list())){quit('no', 1)}
    if(!identical(candidate('Jupiter', 'Makemake'), list())){quit('no', 1)}
}
test_humaneval()