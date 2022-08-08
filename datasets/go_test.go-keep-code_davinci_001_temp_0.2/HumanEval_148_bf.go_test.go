package bf_test

import (
    "testing"
    "fmt"
)

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
func bf(planet1 string, planet2 string) []interface{} {
    var planets []interface{}
    if planet1 == "Mercury" {
        planets = append(planets, "Venus")
    }
    if planet1 == "Venus" {
        planets = append(planets, "Earth")
    }
    if planet1 == "Earth" {
        planets = append(planets, "Mars")
    }
    if planet1 == "Mars" {
        planets = append(planets, "Jupiter")
    }
    if planet1 == "Jupiter" {
        planets = append(planets, "Saturn")
    }
    if planet1 == "Saturn" {
        planets = append(planets, "Uranus")
    }
    if planet1 == "Uranus" {
        planets = append(planets, "Neptune")
    }
    if planet1 == "Neptune" {
        planets = append(planets, "Pluto")
    }
    if planet1 == "Pluto" {
        planets = append(planets, "Eris")
    }
    if planet1 == "Eris" {
        planets = append(planets, "Ceres")
    }
    if planet1 == "Ceres" {
        planets = append(planets, "Pallas")
    }
    if planet1 == "Pallas" {
        planets = append(planets, "Vesta")
    }
    if planet1 == "Vesta" {
        planets = append(planets, "Hygiea")
    }
    if planet1 == "Hygiea" {
        planets = append(planets, "Eunomia")
    }
    if planet1 == "Eunomia" {
        planets = append(planets, "Euphrosyne")
    }
    if planet1 == "Euphrosyne" {
        planets = append(planets, "Europa")
    }
    if planet1 == "Europa" {
        planets = append(planets, "Cybele")
    }
    if planet1 == "Cybele" {
        planets = append(

func TestBf(t *testing.T) {
  candidate := bf
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Jupiter", "Neptune"), expected: []interface{}{"Saturn", "Uranus"} },
     { actual: candidate("Earth", "Mercury"), expected: []interface{}{"Venus"} },
     { actual: candidate("Mercury", "Uranus"), expected: []interface{}{"Venus", "Earth", "Mars", "Jupiter", "Saturn"} },
     { actual: candidate("Neptune", "Venus"), expected: []interface{}{"Earth", "Mars", "Jupiter", "Saturn", "Uranus"} },
     { actual: candidate("Earth", "Earth"), expected: []interface{}{} },
     { actual: candidate("Mars", "Earth"), expected: []interface{}{} },
     { actual: candidate("Jupiter", "Makemake"), expected: []interface{}{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
