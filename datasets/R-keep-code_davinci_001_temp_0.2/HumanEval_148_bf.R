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
bf <- function(planet1, planet2) {
    planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
    if (planet1 %in% planets && planet2 %in% planets) {
        planets <- planets[planets %in% c(planet1, planet2)]
        planets <- planets[planets %in% planets[planets %>% sort(.) %>% .[1]] : planets %in% planets[planets %>% sort(.) %>% .[nrow(planets)] ]
        return(planets)
    }
    return(c())
}
bf("Jupiter", "Neptune")
bf("Earth", "Mercury")
bf("Mercury", "Uranus")


test_humaneval <- function() {
candidate <- bf
    if(!identical(candidate('Jupiter', 'Neptune'), c('Saturn', 'Uranus'))){quit('no', 1)}
    if(!identical(candidate('Earth', 'Mercury'), c('Venus'))){quit('no', 1)}
    if(!identical(candidate('Mercury', 'Uranus'), c('Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'))){quit('no', 1)}
    if(!identical(candidate('Neptune', 'Venus'), c('Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus'))){quit('no', 1)}
    if(!identical(candidate('Earth', 'Earth'), list())){quit('no', 1)}
    if(!identical(candidate('Mars', 'Earth'), list())){quit('no', 1)}
    if(!identical(candidate('Jupiter', 'Makemake'), list())){quit('no', 1)}
}
test_humaneval()