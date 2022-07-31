//Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
function make_palindrome(string){
    var result = '';
    var i = string.length - 1;
    while(i >= 0){
        var j = 0;
        while(j < string.length && string[i] === string[j]){
            j++;
        }
        if(j === string.length){
            result = string[i] + result;
            i--;
        }
        else{
            break;
        }
    }
    return string + result;
}


const assert = require('node:assert');


function test() {
  let candidate = make_palindrome;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("x"),"x");
  assert.deepEqual(candidate("xyz"),"xyzyx");
  assert.deepEqual(candidate("xyx"),"xyx");
  assert.deepEqual(candidate("jerry"),"jerryrrej");
}

test();