//Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
function filter_by_prefix(strings, prefix){
    var filtered = [];
    for (var i = 0; i < strings.length; i++) {
        if (strings[i].startsWith(prefix)) {
            filtered.push(strings[i]);
        }
    }
    return filtered;
}


const assert = require('node:assert');


function test() {
  let candidate = filter_by_prefix;
  assert.deepEqual(candidate([], "john"),[]);
  assert.deepEqual(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"]);
}

test();