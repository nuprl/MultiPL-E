//Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
function filter_by_substring(strings: string[], substring: string): string[] {
    return strings.filter(function(string) {
        return string.indexOf(substring) !== -1;
    });
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = filter_by_substring;
  assert.deepEqual(candidate([], "john"),[]);
  assert.deepEqual(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"]);
  assert.deepEqual(candidate(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx"),["xxx", "aaaxxy", "xxxAAA", "xxx"]);
  assert.deepEqual(candidate(["grunt", "trumpet", "prune", "gruesome"], "run"),["grunt", "prune"]);
}

test();