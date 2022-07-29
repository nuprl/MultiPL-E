//Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
function sort_numbers(numbers) {
    var nums = [];
    var num;
    var str;
    var i;
    var j;
    var k;
    var l;
    var m;
    var n;
    var o;
    var p;
    var q;
    var r;
    var s;
    var t;
    var u;
    var v;
    var w;
    var x;
    var y;
    var z;
    var a;
    var b;
    var c;
    var d;
    var e;
    var f;
    var g;
    var h;
    var i1;
    var j1;
    var k1;
    var l1;
    var m1;
    var n1;
    var o1;
    var p1;
    var q1;
    var r1;
    var s1;
    var t1;
    var u1;
    var v1;
    var w1;
    var x1;
    var y1;
    var z1;
    var a1;
    var b1;
    var c1;
    var d1;
    var e1;
    var f1;
    var g1;
    var h1;
    var i2;
    var j2;
    var k2;
    var l2;
    var m2;
    var n2;
    var o2;
    var p2;
    var q2;
    var r2;
    var s2;
    var require;
    var assert = require('node:assert');
    function test() {
        var candidate = sort_numbers;
        assert.deepEqual(candidate(""), "");
        assert.deepEqual(candidate("three"), "three");
        assert.deepEqual(candidate("three five nine"), "three five nine");
        assert.deepEqual(candidate("five zero four seven nine eight"), "zero four five seven eight nine");
        assert.deepEqual(candidate("six five four three two one zero"), "zero one two three four five six");
    }
    test();
}
