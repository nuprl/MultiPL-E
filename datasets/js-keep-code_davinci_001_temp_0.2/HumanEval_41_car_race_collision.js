//Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
function car_race_collision(n){
    var cars = [];
    for(var i = 0; i < n; i++){
        cars.push(0);
    }
    var count = 0;
    while(true){
        var car = cars.indexOf(0);
        if(car == -1){
            break;
        }
        cars[car] = 1;
        var car2 = cars.indexOf(1);
        if(car2 != -1){
            cars[car] = 0;
            cars[car2] = 0;
            count++;
        }
    }
    return count;
}


const assert = require('node:assert');


function test() {
  let candidate = car_race_collision;
  assert.deepEqual(candidate(2),4);
  assert.deepEqual(candidate(3),9);
  assert.deepEqual(candidate(4),16);
  assert.deepEqual(candidate(8),64);
  assert.deepEqual(candidate(10),100);
}

test();