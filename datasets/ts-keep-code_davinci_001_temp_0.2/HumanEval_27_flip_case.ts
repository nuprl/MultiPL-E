//For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
function flip_case(string: string): string {
  return string.split('').map(char => {
    if (char.toUpperCase() === char) {
      return char.toLowerCase();
    } else {
      return char.toUpperCase();
    }
  }).join('');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = flip_case;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("Hello!"),"hELLO!");
  assert.deepEqual(candidate("These violent delights have violent ends"),"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS");
}

test();