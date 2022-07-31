//Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
function filter_by_prefix(strings: string[], prefix: string): string[] {
    return strings.filter(function(string){
        return string.startsWith(prefix);
    });
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = filter_by_prefix;
  assert.deepEqual(candidate([], "john"),[]);
  assert.deepEqual(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"]);
}

test();