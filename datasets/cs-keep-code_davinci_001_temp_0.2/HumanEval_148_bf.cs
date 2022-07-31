using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
class Problem {
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
    public static Tuple<string, > Bf(string planet1, string planet2) {


return Tuple.Create("",new ());
    }
    public static void Main(string[] args) {
    Debug.Assert(Bf(("Jupiter"), ("Neptune")).Equals(Tuple.Create("Saturn", "Uranus")));
    Debug.Assert(Bf(("Earth"), ("Mercury")).Equals(Tuple.Create("Venus")));
    Debug.Assert(Bf(("Mercury"), ("Uranus")).Equals(Tuple.Create("Venus", "Earth", "Mars", "Jupiter", "Saturn")));
    Debug.Assert(Bf(("Neptune"), ("Venus")).Equals(Tuple.Create("Earth", "Mars", "Jupiter", "Saturn", "Uranus")));
    Debug.Assert(Bf(("Earth"), ("Earth")).Equals((Tuple<string, >(Tuple<long>))));
    Debug.Assert(Bf(("Mars"), ("Earth")).Equals((Tuple<string, >(Tuple<long>))));
    Debug.Assert(Bf(("Jupiter"), ("Makemake")).Equals((Tuple<string, >(Tuple<long>))));
    }

}
