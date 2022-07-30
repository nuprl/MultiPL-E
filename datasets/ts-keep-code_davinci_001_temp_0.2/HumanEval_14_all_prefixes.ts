//Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes('abc')
// ['a', 'ab', 'abc']
function all_prefixes(string: string): string[] {
    let prefixes: string[] = [];
    for (let i = 0; i < string.length; i++) {
        prefixes.push(string.substring(0, i + 1));
    }
    return prefixes;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = all_prefixes;
  assert.deepEqual(candidate(""),[]);
  assert.deepEqual(candidate("asdfgh"),["a", "as", "asd", "asdf", "asdfg", "asdfgh"]);
  assert.deepEqual(candidate("WWW"),["W", "WW", "WWW"]);
}

test();