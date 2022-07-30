//Write a function that takes a string and returns True if the string
// length is a prime number or False otherwise
// Examples
// prime_length('Hello') == True
// prime_length('abcdcba') == True
// prime_length('kittens') == True
// prime_length('orange') == False
function prime_length(string: string): boolean {
    let prime = true;
    let length = string.length;
    if (length < 2) {
        prime = false;
    }
    else {
        for (let i = 2; i < length; i++) {
            if (length % i === 0) {
                prime = false;
                break;
            }
        }
    }
    return prime;
}
console.log(prime_length('Hello'));
console.log(prime_length('abcdcba'));
console.log(prime_length('kittens'));
console.log(prime_length('orange'));


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = prime_length;
  assert.deepEqual(candidate("Hello"),true);
  assert.deepEqual(candidate("abcdcba"),true);
  assert.deepEqual(candidate("kittens"),true);
  assert.deepEqual(candidate("orange"),false);
  assert.deepEqual(candidate("wow"),true);
  assert.deepEqual(candidate("world"),true);
  assert.deepEqual(candidate("MadaM"),true);
  assert.deepEqual(candidate("Wow"),true);
  assert.deepEqual(candidate(""),false);
  assert.deepEqual(candidate("HI"),true);
  assert.deepEqual(candidate("go"),true);
  assert.deepEqual(candidate("gogo"),false);
  assert.deepEqual(candidate("aaaaaaaaaaaaaaa"),false);
  assert.deepEqual(candidate("Madam"),true);
  assert.deepEqual(candidate("M"),false);
  assert.deepEqual(candidate("0"),false);
}

test();