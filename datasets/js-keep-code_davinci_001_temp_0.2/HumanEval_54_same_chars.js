//Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
function same_chars(s0, s1){
    // YOUR CODE HERE
    var s0_arr = s0.split('');
    var s1_arr = s1.split('');
    var s0_dict = {};
    var s1_dict = {};
    for (var i = 0; i < s0_arr.length; i++){
        if (s0_dict[s0_arr[i]] == undefined){
            s0_dict[s0_arr[i]] = 1;
        }
        else{
            s0_dict[s0_arr[i]] += 1;
        }
    }
    for (var i = 0; i < s1_arr.length; i++){
        if (s1_dict[s1_arr[i]] == undefined){
            s1_dict[s1_arr[i]] = 1;
        }
        else{
            s1_dict[s1_arr[i]] += 1;
        }
    }
    for (var key in s0_dict){
        if (s1_dict[key] == undefined){
            return false;
        }
        else if (s0_dict[key] != s1_dict[key]){
            return false;
        }
    }
    return true;
}


const assert = require('node:assert');


function test() {
  let candidate = same_chars;
  assert.deepEqual(candidate("eabcdzzzz", "dddzzzzzzzddeddabc"),true);
  assert.deepEqual(candidate("abcd", "dddddddabc"),true);
  assert.deepEqual(candidate("dddddddabc", "abcd"),true);
  assert.deepEqual(candidate("eabcd", "dddddddabc"),false);
  assert.deepEqual(candidate("abcd", "dddddddabcf"),false);
  assert.deepEqual(candidate("eabcdzzzz", "dddzzzzzzzddddabc"),false);
  assert.deepEqual(candidate("aabb", "aaccc"),false);
}

test();