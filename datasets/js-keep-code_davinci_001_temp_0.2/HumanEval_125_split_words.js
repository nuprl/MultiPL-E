//Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
function split_words(txt){
    var split = txt.split(" ");
    if(split.length == 1){
        var split = txt.split(",");
        if(split.length == 1){
            var split = txt.split("");
            var count = 0;
            for(var i = 0; i < split.length; i++){
                if(i % 2 != 0){
                    if(split[i] != " "){
                        count++;
                    }
                }
            }
            return count;
        }
        return split;
    }
    return split;
}


const assert = require('node:assert');


function test() {
  let candidate = split_words;
  assert.deepEqual(candidate("Hello world!"),["Hello", "world!"]);
  assert.deepEqual(candidate("Hello,world!"),["Hello", "world!"]);
  assert.deepEqual(candidate("Hello world,!"),["Hello", "world,!"]);
  assert.deepEqual(candidate("Hello,Hello,world !"),["Hello,Hello,world", "!"]);
  assert.deepEqual(candidate("abcdef"),3);
  assert.deepEqual(candidate("aaabb"),2);
  assert.deepEqual(candidate("aaaBb"),1);
  assert.deepEqual(candidate(""),0);
}

test();