import scala.math._
import scala.collection.mutable._
object Problem {
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
    def bf(planet1 : String, planet2 : String) : List[String] = {
        val planets = List("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
        if (planets.contains(planet1) && planets.contains(planet2)) {
            val planet1Index = planets.indexOf(planet1)
            val planet2Index = planets.indexOf(planet2)
            val result = planets.slice(planet1Index + 1, planet2Index)
            result.sorted
        } else {
            List()
        }

    }
    def main(args: Array[String]) = {
    assert(bf(("Jupiter"), ("Neptune")).equals((List[String]("Saturn", "Uranus"))));
    assert(bf(("Earth"), ("Mercury")).equals((List[String]("Venus"))));
    assert(bf(("Mercury"), ("Uranus")).equals((List[String]("Venus", "Earth", "Mars", "Jupiter", "Saturn"))));
    assert(bf(("Neptune"), ("Venus")).equals((List[String]("Earth", "Mars", "Jupiter", "Saturn", "Uranus"))));
    assert(bf(("Earth"), ("Earth")).equals((List[String]())));
    assert(bf(("Mars"), ("Earth")).equals((List[String]())));
    assert(bf(("Jupiter"), ("Makemake")).equals((List[String]())));
    }

}
