//Given the lengths of the three sides of a triangle. Return True if the three
// sides form a right-angled triangle, False otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or 
// 90 degree.
// Example:
// right_angle_triangle(3, 4, 5) == True
// right_angle_triangle(1, 2, 3) == False
function right_angle_triangle(a, b, c){
    if(a*a + b*b == c*c){
        return true;
    }
    else{
        return false;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = right_angle_triangle;
  assert.deepEqual(candidate(3, 4, 5),true);
  assert.deepEqual(candidate(1, 2, 3),false);
  assert.deepEqual(candidate(10, 6, 8),true);
  assert.deepEqual(candidate(2, 2, 2),false);
  assert.deepEqual(candidate(7, 24, 25),true);
  assert.deepEqual(candidate(10, 5, 7),false);
  assert.deepEqual(candidate(5, 12, 13),true);
  assert.deepEqual(candidate(15, 8, 17),true);
  assert.deepEqual(candidate(48, 55, 73),true);
  assert.deepEqual(candidate(1, 1, 1),false);
  assert.deepEqual(candidate(2, 2, 10),false);
}

test();