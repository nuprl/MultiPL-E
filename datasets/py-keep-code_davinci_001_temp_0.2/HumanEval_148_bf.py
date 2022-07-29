from typing import Tuple

def bf(planet1: str, planet2: str) -> Tuple[str, ...]:
    """
    There are eight planets in our solar system: the closerst to the Sun 
    is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
    Uranus, Neptune.
    Write a function that takes two planet names as strings planet1 and planet2. 
    The function should return a tuple containing all planets whose orbits are 
    located between the orbit of planet1 and the orbit of planet2, sorted by 
    the proximity to the sun. 
    The function should return an empty tuple if planet1 or planet2
    are not correct planet names. 
    Examples
    bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
    bf("Earth", "Mercury") ==> ("Venus")
    bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
    """
    planets = ("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
    if planet1 not in planets or planet2 not in planets:
        return ()
    else:
        return tuple(sorted(planets[planets.index(planet1):planets.index(planet2)]))

def check(candidate):
    assert candidate('Jupiter', 'Neptune') == ('Saturn', 'Uranus')
    assert candidate('Earth', 'Mercury') == ('Venus',)
    assert candidate('Mercury', 'Uranus') == ('Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn')
    assert candidate('Neptune', 'Venus') == ('Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus')
    assert candidate('Earth', 'Earth') == ()
    assert candidate('Mars', 'Earth') == ()
    assert candidate('Jupiter', 'Makemake') == ()

def test_check():
    check(bf)

test_check()
