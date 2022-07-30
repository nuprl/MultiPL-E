//Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters('xyzXYZ')
// 3
// >>> count_distinct_characters('Jerry')
// 4
function count_distinct_characters(string: string): number {
    let distinct = new Set();
    for (let i = 0; i < string.length; i++) {
        distinct.add(string[i]);
    }
    return distinct.size;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = count_distinct_characters;
  assert.deepEqual(candidate(""),0);
  assert.deepEqual(candidate("abcde"),5);
  assert.deepEqual(candidate("abcdecadeCADE"),5);
  assert.deepEqual(candidate("aaaaAAAAaaaa"),1);
  assert.deepEqual(candidate("Jerry jERRY JeRRRY"),5);
}

test();