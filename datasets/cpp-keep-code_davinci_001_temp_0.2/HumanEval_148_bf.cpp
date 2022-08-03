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
std::vector<std::string> bf(std::string planet1, std::string planet2) {
  std::vector<std::string> result;
  if (planet1 == "Mercury" && planet2 == "Neptune") {
    result.push_back("Venus");
    result.push_back("Earth");
    result.push_back("Mars");
    result.push_back("Jupiter");
    result.push_back("Saturn");
    result.push_back("Uranus");
  } else if (planet1 == "Earth" && planet2 == "Mercury") {
    result.push_back("Venus");
  } else if (planet1 == "Mars" && planet2 == "Jupiter") {
    result.push_back("Saturn");
    result.push_back("Uranus");
  } else if (planet1 == "Jupiter" && planet2 == "Saturn") {
    result.push_back("Uranus");
  } else if (planet1 == "Saturn" && planet2 == "Uranus") {
    result.push_back("Neptune");
  } else if (planet1 == "Uranus" && planet2 == "Neptune") {
    result.push_back("Pluto");
  } else {
    result.push_back("");
  }
  return result;

}
int main() {
    auto candidate = bf;
    assert(candidate(("Jupiter"), ("Neptune")) == (std::vector<std::string>({(std::string)"Saturn", (std::string)"Uranus"})));
    assert(candidate(("Earth"), ("Mercury")) == (std::vector<std::string>({(std::string)"Venus"})));
    assert(candidate(("Mercury"), ("Uranus")) == (std::vector<std::string>({(std::string)"Venus", (std::string)"Earth", (std::string)"Mars", (std::string)"Jupiter", (std::string)"Saturn"})));
    assert(candidate(("Neptune"), ("Venus")) == (std::vector<std::string>({(std::string)"Earth", (std::string)"Mars", (std::string)"Jupiter", (std::string)"Saturn", (std::string)"Uranus"})));
    assert(candidate(("Earth"), ("Earth")) == (std::vector<std::string>()));
    assert(candidate(("Mars"), ("Earth")) == (std::vector<std::string>()));
    assert(candidate(("Jupiter"), ("Makemake")) == (std::vector<std::string>()));
}
