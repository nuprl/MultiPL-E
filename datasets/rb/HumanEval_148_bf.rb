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
def bf(planet1, planet2)
  planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
  if planets.include?(planet1) && planets.include?(planet2)
    planets.select { |planet| planet > planet1 && planet < planet2 }.sort
  else
    []
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_bf
    candidate = method(:bf)
    assert_equal(['Saturn', 'Uranus'], candidate.call('Jupiter', 'Neptune'))
    assert_equal(['Venus'], candidate.call('Earth', 'Mercury'))
    assert_equal(['Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'], candidate.call('Mercury', 'Uranus'))
    assert_equal(['Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus'], candidate.call('Neptune', 'Venus'))
    assert_equal([], candidate.call('Earth', 'Earth'))
    assert_equal([], candidate.call('Mars', 'Earth'))
    assert_equal([], candidate.call('Jupiter', 'Makemake'))
  end
end
