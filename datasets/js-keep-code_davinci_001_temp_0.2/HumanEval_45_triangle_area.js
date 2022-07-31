//Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
function triangle_area(a, h){
    return (a * h) / 2;
}


const assert = require('node:assert');


function test() {
  let candidate = triangle_area;
  assert.deepEqual(candidate(5, 3),7.5);
  assert.deepEqual(candidate(2, 2),2.0);
  assert.deepEqual(candidate(10, 8),40.0);
}

test();