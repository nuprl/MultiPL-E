//Given a non-empty list of integers lst. add the even elements that are at odd indices..
// Examples:
// add([4, 2, 6, 7]) ==> 2
function add(lst) {
    var sum = 0;
    for (var i = 0; i < lst.length; i++) {
        if (i % 2 !== 0 && lst[i] % 2 === 0) {
            sum += lst[i];
        }
    }
    return sum;
}
console.log(add([4, 2, 6, 7]));
var assert = require('node:assert');
function test() {
    var candidate = add;
    assert.deepEqual(candidate([4, 88]), 88);
    assert.deepEqual(candidate([4, 5, 6, 7, 2, 122]), 122);
    assert.deepEqual(candidate([4, 0, 6, 7]), 0);
    assert.deepEqual(candidate([4, 4, 6, 8]), 12);
}
test();
