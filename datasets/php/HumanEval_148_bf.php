<?php
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
function bf($planet1, $planet2) {
    $planets = array("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
    $planet1 = strtolower($planet1);
    $planet2 = strtolower($planet2);
    if (in_array($planet1, $planets) && in_array($planet2, $planets)) {
        $result = array();
        $i = array_search($planet1, $planets);
        $j = array_search($planet2, $planets);
        for ($k = $i + 1; $k < $j; $k++) {
            $result[] = $planets[$k];
        }
        return $result;
    }
    return array();
}

$planet1 = "Earth";
$planet2 = "Mercury";
$result = bf($planet1, $planet2);
print_r($result);

function candidate(...$args) {
    return bf(...$args);
}

function test(): void {
    if (candidate('Jupiter', 'Neptune') !== array('Saturn', 'Uranus')) { throw new Exception("Test failed!"); }
    if (candidate('Earth', 'Mercury') !== array('Venus')) { throw new Exception("Test failed!"); }
    if (candidate('Mercury', 'Uranus') !== array('Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn')) { throw new Exception("Test failed!"); }
    if (candidate('Neptune', 'Venus') !== array('Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus')) { throw new Exception("Test failed!"); }
    if (candidate('Earth', 'Earth') !== array()) { throw new Exception("Test failed!"); }
    if (candidate('Mars', 'Earth') !== array()) { throw new Exception("Test failed!"); }
    if (candidate('Jupiter', 'Makemake') !== array()) { throw new Exception("Test failed!"); }
}

test();