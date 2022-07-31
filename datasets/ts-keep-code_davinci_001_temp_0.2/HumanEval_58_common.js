var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
//Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
function common(l1, l2) {
    return __spreadArray([], new Set(__spreadArray(__spreadArray([], l1, true), l2, true)), true).sort(function (a, b) { return a - b; });
}
var assert = require('node:assert');
function test() {
    var candidate = common;
    assert.deepEqual(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]), [1, 5, 653]);
    assert.deepEqual(candidate([5, 3, 2, 8], [3, 2]), [2, 3]);
    assert.deepEqual(candidate([4, 3, 2, 8], [3, 2, 4]), [2, 3, 4]);
    assert.deepEqual(candidate([4, 3, 2, 8], []), []);
}
test();
