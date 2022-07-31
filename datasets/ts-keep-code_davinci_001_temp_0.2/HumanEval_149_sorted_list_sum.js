//Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
function sorted_list_sum(lst) {
    var sorted = lst.sort(function (a, b) {
        if (a.length > b.length) {
            return 1;
        }
        if (a.length < b.length) {
            return -1;
        }
        return 0;
    });
    return sorted;
}
var assert = require('node:assert');
function test() {
    var candidate = sorted_list_sum;
    assert.deepEqual(candidate(["aa", "a", "aaa"]), ["aa"]);
    assert.deepEqual(candidate(["school", "AI", "asdf", "b"]), ["AI", "asdf", "school"]);
    assert.deepEqual(candidate(["d", "b", "c", "a"]), []);
    assert.deepEqual(candidate(["d", "dcba", "abcd", "a"]), ["abcd", "dcba"]);
    assert.deepEqual(candidate(["AI", "ai", "au"]), ["AI", "ai", "au"]);
    assert.deepEqual(candidate(["a", "b", "b", "c", "c", "a"]), []);
    assert.deepEqual(candidate(["aaaa", "bbbb", "dd", "cc"]), ["cc", "dd", "aaaa", "bbbb"]);
}
test();
