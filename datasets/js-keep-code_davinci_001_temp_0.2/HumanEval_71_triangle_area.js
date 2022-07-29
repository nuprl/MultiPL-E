//Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater 
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
function triangle_area(a, b, c){
  if(a + b > c && a + c > b && b + c > a){
    return Math.round(Math.sqrt(a * b * c / 2) * 100) / 100;
  }
  return -1;
}


const assert = require('node:assert');


function test() {
  let candidate = triangle_area;
  assert.deepEqual(candidate(3, 4, 5),6.0);
  assert.deepEqual(candidate(1, 2, 10),-1);
  assert.deepEqual(candidate(4, 8, 5),8.18);
  assert.deepEqual(candidate(2, 2, 2),1.73);
  assert.deepEqual(candidate(1, 2, 3),-1);
  assert.deepEqual(candidate(10, 5, 7),16.25);
  assert.deepEqual(candidate(2, 6, 3),-1);
  assert.deepEqual(candidate(1, 1, 1),0.43);
  assert.deepEqual(candidate(2, 2, 10),-1);
}

test();