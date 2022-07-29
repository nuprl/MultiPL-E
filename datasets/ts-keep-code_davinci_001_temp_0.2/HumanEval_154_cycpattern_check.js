//You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
function cycpattern_check(a, b) {
    var str = a.split('');
    var str2 = b.split('');
    var i = 0;
    while (i < str.length) {
        var j = 0;
        while (j < str2.length) {
            if (str[i] === str2[j]) {
                var k = 0;
                while (k < str2.length) {
                    if (str[i + k] !== str2[k]) {
                        break;
                    }
                    if (k === str2.length - 1) {
                        return true;
                    }
                    k++;
                }
            }
            j++;
        }
        i++;
    }
    return false;
}
var assert = require('node:assert');
function test() {
    var candidate = cycpattern_check;
    assert.deepEqual(candidate("xyzw", "xyw"), false);
    assert.deepEqual(candidate("yello", "ell"), true);
    assert.deepEqual(candidate("whattup", "ptut"), false);
    assert.deepEqual(candidate("efef", "fee"), true);
    assert.deepEqual(candidate("abab", "aabb"), false);
    assert.deepEqual(candidate("winemtt", "tinem"), true);
}
test();
