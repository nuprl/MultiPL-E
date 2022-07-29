//Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
function total_match(lst1, lst2) {
    var lst1_len = 0;
    var lst2_len = 0;
    for (var i = 0; i < lst1.length; i++) {
        lst1_len += lst1[i].length;
    }
    for (var i = 0; i < lst2.length; i++) {
        lst2_len += lst2[i].length;
    }
    if (lst1_len < lst2_len) {
        return lst1;
    }
    else if (lst1_len > lst2_len) {
        return lst2;
    }
    else {
        return lst1;
    }
}
console.log(total_match([], []));
console.log(total_match(['hi', 'admin'], ['hI', 'Hi']));
console.log(total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']));
console.log(total_match(['hi', 'admin'], ['hI', 'hi', 'hi']));
console.log(total_match(['4'], ['1', '2', '3', '4', '5']));
var assert = require('node:assert');
function test() {
    var candidate = total_match;
    assert.deepEqual(candidate([], []), []);
    assert.deepEqual(candidate(["hi", "admin"], ["hi", "hi"]), ["hi", "hi"]);
    assert.deepEqual(candidate(["hi", "admin"], ["hi", "hi", "admin", "project"]), ["hi", "admin"]);
    assert.deepEqual(candidate(["4"], ["1", "2", "3", "4", "5"]), ["4"]);
    assert.deepEqual(candidate(["hi", "admin"], ["hI", "Hi"]), ["hI", "Hi"]);
    assert.deepEqual(candidate(["hi", "admin"], ["hI", "hi", "hi"]), ["hI", "hi", "hi"]);
    assert.deepEqual(candidate(["hi", "admin"], ["hI", "hi", "hii"]), ["hi", "admin"]);
    assert.deepEqual(candidate([], ["this"]), []);
    assert.deepEqual(candidate(["this"], []), []);
}
test();
