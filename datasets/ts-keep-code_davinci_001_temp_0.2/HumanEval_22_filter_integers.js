//Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
function filter_integers(values) {
    return values.filter(function (value) { return typeof value === 'number' && !isNaN(value); });
}
var assert = require('node:assert');
function test() {
    var candidate = filter_integers;
    assert.deepEqual(candidate([]), []);
    assert.deepEqual(candidate([4, {}, [], 23.2, 9, "adasd"]), [4, 9]);
    assert.deepEqual(candidate([3, "c", 3, 3, "a", "b"]), [3, 3, 3]);
}
test();
