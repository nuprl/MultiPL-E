//Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
function truncate_number(number){
    var int_part = Math.floor(number);
    var dec_part = number - int_part;
    return dec_part;
}


const assert = require('node:assert');


function test() {
  let candidate = truncate_number;
  if (assert.deepEqual(candidate(3.5),0.5) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate(1.25),0.25) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate(123.0),0.0) {
    true 
  } else {
  throw new Error('Failed test!') };
}

test();