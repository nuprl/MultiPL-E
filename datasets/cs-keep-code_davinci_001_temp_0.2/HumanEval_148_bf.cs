using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
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
    public static List<string> Bf(string planet1, string planet2) {
        List<string> result = new List<string>();
        if (planet1 == "Mercury" && planet2 == "Venus") {
            result.Add("Venus");
            return result;
        }
        if (planet1 == "Venus" && planet2 == "Earth") {
            result.Add("Venus");
            result.Add("Earth");
            return result;
        }
        if (planet1 == "Earth" && planet2 == "Mars") {
            result.Add("Earth");
            result.Add("Mars");
            return result;
        }
        if (planet1 == "Mars" && planet2 == "Jupiter") {
            result.Add("Mars");
            result.Add("Jupiter");
            return result;
        }
        if (planet1 == "Jupiter" && planet2 == "Saturn") {
            result.Add("Jupiter");
            result.Add("Saturn");
            return result;
        }
        if (planet1 == "Saturn" && planet2 == "Uranus") {
            result.Add("Saturn");
            result.Add("Uranus");
            return result;
        }
        if (planet1 == "Uranus" && planet2 == "Neptune") {
            result.Add("Uranus");
            result.Add("Neptune");
            return result;
        }
        if (planet1 == "Neptune" && planet2 == "Pluto") {
            result.Add("Neptune");
            result.Add("Pluto");
            return result;
        }
        if (planet1 == "Pluto" && planet2 == "Mercury") {
            result.Add("Pluto");
            result.Add("Mercury");
            return result;
        }
        if (planet1 == "Mercury" && planet2 == "Venus") {
            result.Add("Venus");
            return result;
        }
        if (planet1 == "Venus" && planet2 == "Earth") {
            result.Add("Venus");
            result.Add("Earth");
            return result;
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(Bf(("Jupiter"), ("Neptune")).Equals((new List<string>(new string[]{(string)"Saturn", (string)"Uranus"}))));
    Debug.Assert(Bf(("Earth"), ("Mercury")).Equals((new List<string>(new string[]{(string)"Venus"}))));
    Debug.Assert(Bf(("Mercury"), ("Uranus")).Equals((new List<string>(new string[]{(string)"Venus", (string)"Earth", (string)"Mars", (string)"Jupiter", (string)"Saturn"}))));
    Debug.Assert(Bf(("Neptune"), ("Venus")).Equals((new List<string>(new string[]{(string)"Earth", (string)"Mars", (string)"Jupiter", (string)"Saturn", (string)"Uranus"}))));
    Debug.Assert(Bf(("Earth"), ("Earth")).Equals((new List<string>())));
    Debug.Assert(Bf(("Mars"), ("Earth")).Equals((new List<string>())));
    Debug.Assert(Bf(("Jupiter"), ("Makemake")).Equals((new List<string>())));
    }

}
