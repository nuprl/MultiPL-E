//Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
function can_arrange(arr) {
    var i = 0;
    var j = 1;
    var k = 0;
    var l = 1;
    var m = 0;
    var n = 1;
    var o = 0;
    var p = 1;
    var q = 0;
    var r = 1;
    var s = 0;
    var t = 1;
    var u = 0;
    var v = 1;
    var w = 0;
    var x = 1;
    var y = 0;
    var z = 1;
    var a = 0;
    var b = 1;
    var c = 0;
    var d = 1;
    var e = 0;
    var f = 1;
    var g = 0;
    var h = 1;
    var i1 = 0;
    var j1 = 1;
    var k1 = 0;
    var l1 = 1;
    var m1 = 0;
    var n1 = 1;
    var o1 = 0;
    var p1 = 1;
    var q1 = 0;
    var r1 = 1;
    var s1 = 0;
    var t1 = 1;
    var u1 = 0;
    var v1 = 1;
    var w1 = 0;
    var x1 = 1;
    var y1 = 0;
    var z1 = 1;
    var a1 = 0;
    var b1 = 1;
    var c1 = 0;
    var d1 = 1;
    var e1 = 0;
    var f1 = 1;
    var g1 = 0;
    var h1 = 1;
    var i2 = 0;
    var j2 = 1;
    var k2 = 0;
    var l2 = 1;
    var m2 = 0;
    var n2 = 1;
    var o2 = 0;
    var p2 = 1;
    var q2 = 0;
    var r2 = 1;
    var s2 = 0;
    var t2 = 1;
    var u2 = 0;
    var v2 = declare;
    var require;
    var assert = require('node:assert');
    function test() {
        var candidate = can_arrange;
        assert.deepEqual(candidate([1, 2, 4, 3, 5]), 3);
        assert.deepEqual(candidate([1, 2, 4, 5]), -1);
        assert.deepEqual(candidate([1, 4, 2, 5, 6, 7, 8, 9, 10]), 2);
        assert.deepEqual(candidate([4, 8, 5, 7, 3]), 4);
        assert.deepEqual(candidate([]), -1);
    }
    test();
}
