//Write a function that takes a message, and encodes in such a 
// way that it swaps case of all letters, replaces all vowels in 
// the message with the letter that appears 2 places ahead of that 
// vowel in the english alphabet. 
// Assume only letters. 
// Examples:
// >>> encode('test')
// 'TGST'
// >>> encode('This is a message')
// 'tHKS KS C MGSSCGG'
function encode(message){
  var vowels = ['a', 'e', 'i', 'o', 'u']
  var result = ''
  for (var i = 0; i < message.length; i++) {
    var letter = message[i]
    if (vowels.indexOf(letter) !== -1) {
      var nextLetter = message[i + 2]
      result += nextLetter
    } else {
      result += letter
    }
  }
  return result
}


const assert = require('node:assert');


function test() {
  let candidate = encode;
  assert.deepEqual(candidate("TEST"),"tgst");
  assert.deepEqual(candidate("Mudasir"),"mWDCSKR");
  assert.deepEqual(candidate("YES"),"ygs");
  assert.deepEqual(candidate("This is a message"),"tHKS KS C MGSSCGG");
  assert.deepEqual(candidate("I DoNt KnOw WhAt tO WrItE"),"k dQnT kNqW wHcT Tq wRkTg");
}

test();