//Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
function split_words(txt) {
    var res = [];
    var i = 0;
    var j = 0;
    var k = 0;
    var l = 0;
    var m = 0;
    var n = 0;
    var o = 0;
    var p = 0;
    var q = 0;
    var r = 0;
    var s = 0;
    var t = 0;
    var u = 0;
    var v = 0;
    var w = 0;
    var x = 0;
    var y = 0;
    var z = 0;
    var a = 0;
    var b = 0;
    var c = 0;
    var d = 0;
    var e = 0;
    var f = 0;
    var g = 0;
    var h = 0;
    var i1 = 0;
    var j1 = 0;
    var k1 = 0;
    var l1 = 0;
    var m1 = 0;
    var n1 = 0;
    var o1 = 0;
    var p1 = 0;
    var q1 = 0;
    var r1 = 0;
    var s1 = 0;
    var t1 = 0;
    var u1 = 0;
    var v1 = 0;
    var w1 = 0;
    var x1 = 0;
    var y1 = 0;
    var z1 = 0;
    var a1 = 0;
    var b1 = 0;
    var c1 = 0;
    var d1 = 0;
    var e1 = 0;
    var f1 = 0;
    var g1 = 0;
    var h1;
    var assert = require('node:assert');
    function test() {
        var candidate = split_words;
        assert.deepEqual(candidate("Hello world!"), ["Hello", "world!"]);
        assert.deepEqual(candidate("Hello,world!"), ["Hello", "world!"]);
        assert.deepEqual(candidate("Hello world,!"), ["Hello", "world,!"]);
        assert.deepEqual(candidate("Hello,Hello,world !"), ["Hello,Hello,world", "!"]);
        assert.deepEqual(candidate("abcdef"), 3);
        assert.deepEqual(candidate("aaabb"), 2);
        assert.deepEqual(candidate("aaaBb"), 1);
        assert.deepEqual(candidate(""), 0);
    }
    test();
}
