//For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
function flip_case(string) {
    return string.split('').map(function (char) {
        if (char.toUpperCase() === char) {
            return char.toLowerCase();
        }
        else {
            return char.toUpperCase();
        }
    }).join('');
}
var assert = require('node:assert');
function test() {
    var candidate = flip_case;
    assert.deepEqual(candidate(""), "");
    assert.deepEqual(candidate("Hello!"), "hELLO!");
    assert.deepEqual(candidate("These violent delights have violent ends"), "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS");
}
test();
