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
function encode(message) {
    var result = '';
    var vowels = ['a', 'e', 'i', 'o', 'u'];
    var alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    for (var i = 0; i < message.length; i++) {
        if (vowels.includes(message[i])) {
            var index = vowels.indexOf(message[i]);
            result += alphabet[index + 2];
        }
        else {
            result += message[i];
        }
    }
    return result;
}
var assert = require('node:assert');
function test() {
    var candidate = encode;
    assert.deepEqual(candidate("TEST"), "tgst");
    assert.deepEqual(candidate("Mudasir"), "mWDCSKR");
    assert.deepEqual(candidate("YES"), "ygs");
    assert.deepEqual(candidate("This is a message"), "tHKS KS C MGSSCGG");
    assert.deepEqual(candidate("I DoNt KnOw WhAt tO WrItE"), "k dQnT kNqW wHcT Tq wRkTg");
}
test();
