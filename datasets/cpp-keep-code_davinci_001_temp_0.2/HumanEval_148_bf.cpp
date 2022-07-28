#include<assert.h>
#include<bits/stdc++.h>
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
std::tuple<std::string, > bf(std::string planet1, std::string planet2) {
  std::tuple<std::string, > result;
  return result;

}
int main() {
    auto candidate = bf;
    assert(candidate(("Jupiter"), ("Neptune")) == std::make_tuple("Saturn", "Uranus"));
    assert(candidate(("Earth"), ("Mercury")) == std::make_tuple("Venus"));
    assert(candidate(("Mercury"), ("Uranus")) == std::make_tuple("Venus", "Earth", "Mars", "Jupiter", "Saturn"));
    assert(candidate(("Neptune"), ("Venus")) == std::make_tuple("Earth", "Mars", "Jupiter", "Saturn", "Uranus"));
    assert(candidate(("Earth"), ("Earth")) == (std::tuple<std::string, >(std::tuple<long>)));
    assert(candidate(("Mars"), ("Earth")) == (std::tuple<std::string, >(std::tuple<long>)));
    assert(candidate(("Jupiter"), ("Makemake")) == (std::tuple<std::string, >(std::tuple<long>)));
}
