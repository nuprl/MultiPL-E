//There are eight planets in our solar system: the closerst to the Sun 
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
function bf(planet1, planet2){
    let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"];
    let result = [];
    if(planets.includes(planet1) && planets.includes(planet2)){
        for(let i = 0; i < planets.length; i++){
            if(planets[i] == planet1){
                for(let j = i; j < planets.length; j++){
                    if(planets[j] == planet2){
                        for(let k = i; k <= j; k++){
                            result.push(planets[k]);
                        }
                        break;
                    }
                }
            }
        }
    }
    return result;
}

const assert = require('node:assert');


function test() {
  let candidate = bf;
  assert.deepEqual(candidate("Jupiter", "Neptune"),["Saturn", "Uranus"]);
  assert.deepEqual(candidate("Earth", "Mercury"),["Venus"]);
  assert.deepEqual(candidate("Mercury", "Uranus"),["Venus", "Earth", "Mars", "Jupiter", "Saturn"]);
  assert.deepEqual(candidate("Neptune", "Venus"),["Earth", "Mars", "Jupiter", "Saturn", "Uranus"]);
  assert.deepEqual(candidate("Earth", "Earth"),[]);
  assert.deepEqual(candidate("Mars", "Earth"),[]);
  assert.deepEqual(candidate("Jupiter", "Makemake"),[]);
}

test();