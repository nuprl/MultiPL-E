//Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return None if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
// compare_one(1, 2.5) ➞ 2.5
// compare_one(1, "2,3") ➞ "2,3"
// compare_one("5,1", "6") ➞ "6"
// compare_one("1", 1) ➞ None
function compare_one(a, b){
    if(typeof a === "number" && typeof b === "number"){
        if(a > b){
            return a;
        }
        else if(a < b){
            return b;
        }
        else{
            return null;
        }
    }
    else if(typeof a === "string" && typeof b === "string"){
        if(a > b){
            return a;
        }
        else if(a < b){
            return b;
        }
        else{
            return null;
        }
    }
    else if(typeof a === "string" && typeof b === "number"){
        if(parseFloat(a) > b){
            return a;
        }
        else if(parseFloat(a) < b){
            return b;
        }
        else{
            return null;
        }
    }
    else if(typeof a === "number" && typeof b === "string"){
        if(a > parseFloat(b)){
            return a;
        }
        else if(a < parseFloat(b)){
            return b;
        }
        else{
            return null;
        }
    }
}


const assert = require('node:assert');


function test() {
  let candidate = compare_one;
  assert.deepEqual(candidate(1, 2),2);
  assert.deepEqual(candidate(1, 2.5),2.5);
  assert.deepEqual(candidate(2, 3),3);
  assert.deepEqual(candidate(5, 6),6);
  assert.deepEqual(candidate(1, "2,3"),"2,3");
  assert.deepEqual(candidate("5,1", "6"),"6");
  assert.deepEqual(candidate("1", "2"),"2");
  assert.deepEqual(candidate("1", 1),null);
}

test();