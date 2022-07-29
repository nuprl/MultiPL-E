//Checks if given string is a palindrome
// >>> is_palindrome('')
// True
// >>> is_palindrome('aba')
// True
// >>> is_palindrome('aaaaa')
// True
// >>> is_palindrome('zbcd')
// False
function is_palindrome(text){
    var text = text.toLowerCase();
    var reverse = text.split('').reverse().join('');
    if(text == reverse){
        return true;
    }
    else{
        return false;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = is_palindrome;
  assert.deepEqual(candidate(""),true);
  assert.deepEqual(candidate("aba"),true);
  assert.deepEqual(candidate("aaaaa"),true);
  assert.deepEqual(candidate("zbcd"),false);
  assert.deepEqual(candidate("xywyx"),true);
  assert.deepEqual(candidate("xywyz"),false);
  assert.deepEqual(candidate("xywzx"),false);
}

test();