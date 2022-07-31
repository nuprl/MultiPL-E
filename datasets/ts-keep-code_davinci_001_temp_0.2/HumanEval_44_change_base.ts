//Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> change_base(8, 3)
// '22'
// >>> change_base(8, 2)
// '1000'
// >>> change_base(7, 2)
// '111'
function change_base(x: number, base: number): string {
    let result = '';
    while (x > 0) {
        result = (x % base).toString() + result;
        x = Math.floor(x / base);
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = change_base;
  assert.deepEqual(candidate(8, 3),"22");
  assert.deepEqual(candidate(9, 3),"100");
  assert.deepEqual(candidate(234, 2),"11101010");
  assert.deepEqual(candidate(16, 2),"10000");
  assert.deepEqual(candidate(8, 2),"1000");
  assert.deepEqual(candidate(7, 2),"111");
  assert.deepEqual(candidate(2, 3),"2");
  assert.deepEqual(candidate(3, 4),"3");
  assert.deepEqual(candidate(4, 5),"4");
  assert.deepEqual(candidate(5, 6),"5");
  assert.deepEqual(candidate(6, 7),"6");
  assert.deepEqual(candidate(7, 8),"7");
}

test();